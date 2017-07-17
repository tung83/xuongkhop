@ECHO OFF 
:: Check if the password was given
:: Check for correct number of input arguments
    if {%1} == {} GOTO {SYNTAXERROR}
    if {%2} == {} GOTO {SYNTAXERROR}

::CLEAR THE VARIABLES BEFORE USAGE
    SET uploadfilter=
    SET	downloadfilter=
    SET username=
    SET password=
    SET server=
	SET returnvalue=

NET use \\chlfp1 /user:holden_ftp M00vmyka?
CD /d E:\Batch\CovisintDownload

::SET THEM UP NOW
    SET uploadfilter=VTREQUEST
    SET	downloadfilter=*
    SET username=C44LU33H
    SET password=vtims
::UAT    SET server=64.14.228.160
::PROD    
    SET server=64.37.249.63
		
:: Create the temporary script file
>COVISINT.ftp ECHO user
>>COVISINT.ftp ECHO %username%
>>COVISINT.ftp ECHO %password%

IF %1 == D >>COVISINT.ftp ECHO cd /receive
IF %1 == U >>COVISINT.ftp ECHO cd /send
>>COVISINT.ftp ECHO DIR
IF %1 == D >>COVISINT.ftp ECHO mget %downloadfilter%
IF %1 == D >>COVISINT.ftp ECHO mdelete %downloadfilter%
IF %1 == U >>COVISINT.ftp ECHO quote routing to^=VTIMS,from^=C44LU33H,doctype^=VTFLAT,format^=FLATFILE,stdversion^=1.0
IF %1 == U >>COVISINT.ftp ECHO mput %2%uploadfilter%

>>COVISINT.ftp ECHO bye

:: Use the temporary script for unattended FTP
:: Note: depending on your OS version you may have to add a '-n' switch
FTP -vni -s:COVISINT.ftp %server%

PING 127.0.0.1 -n 3

SET returnvalue=%ERRORLEVEL%
IF %returnvalue% NEQ 0  GOTO {ERROR}

::IF %1 == U (
::	if exist %2\%uploadfilter% (
::	   del %2\%uploadfilter%
::	)
::)

::del %2\%uploadfilter%

:: For the paranoid: overwrite the temporary file before deleting it
TYPE NUL >COVISINT.ftp
DEL COVISINT.ftp

IF %1==D (
	IF EXIST *. (
	 ::ROBOCOPY E:\Batch\CovisintDownload\*. \\Chlfp1\VHS2lvtims-Inbound\ /MOV
	 MOVE  E:\Batch\CovisintDownload\*. \\chlfp1\lvtims-inbound
	)
)
GOTO {CLEANUP}

:{SYNTAXERROR}
  ECHO.
  ECHO	Usage of batch: 
  ECHO		%0 U/D Directory Directory2
  ECHO		U = Upload will take place 
  ECHO		D = Download will take place
  ECHO		Directory = Target to download/upload depending on the first parameter
  ECHO		Directory2 = Destination download/upload depending on the first parameter
  ECHO.
  ::GOTO {CLEANUP}

:{ERROR} 
  SET uploadfilter=
  SET downloadfilter=
  SET username=
  SET password=
  SET server=
  EXIT /B %returnvalue% 
  
:{CLEANUP}
    SET uploadfilter=
    SET	downloadfilter=
    SET username=
    SET password=
    SET server=
:{END}
