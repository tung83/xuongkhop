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
    SET tectiaoutput=
	
::SET THEM UP NOW
    SET uploadfilter=*.txt
    SET	downloadfilter=*
    SET username=TC8
    SET password=M00vmyka?
    SET server=192.85.51.226


::RENAME THE FILES SO THAT THEY HAVE AN EXTENSION

IF %1 == U (
	RENAME \\chlfp1\lvtims-outbound\ELIT\*. *.txt
)

NET use \\chlfp1 /user:holden_ftp M00vmyka?
CD /D E:\Batch\ELITFTPBATCH\ELITDownload

PING 127.0.0.1 -n 3

:: Create the temporary script file

>ELITCON.ftp ECHO open %username%@%server%

IF %1 == D >>ELITCON.ftp ECHO cd .
IF %1 == U >>ELITCON.ftp ECHO cd /TC8/CNQ/VTIMSDELVT/./STRIPLF/LRECL=146

IF %1 == D >>ELITCON.ftp ECHO mget %downloadfilter%
IF %1 == U >>ELITCON.ftp ECHO mput \\chlfp1\lvtims-outbound\ELIT\*.txt

>>ELITCON.ftp ECHO bye

:: Use the temporary script for unattended FTP
:: Run and get the output from TECTIA SFTPG3.EXE util into the variable 
:: 0     Operation was successful. 
:: 1     Internal error. 
:: 2     Connection aborted by the user.
:: 3     Destination is not a directory, but a directory was specified by the user. 
:: 4     Connecting to the host failed. 
:: 5     Connection lost. 
:: 6     File does not exist. 
:: 7     No permission to access file. 
:: 8     Undetermined error from sshfilexfer.
:: 11    Some non-fatal errors occured during a directory operation.
:: 101   Wrong command-line arguments specified by the user. 
%~dp0sftpg3.exe -B ELITCON.ftp --password=%password%

::SET tectiaoutput=%ERRORLEVEL%
::IF %tectiaoutput% NEQ 0 GOTO {ERROR}


::RENAME THE FILES SO THAT THEY DO NOT HAVE AN EXTENSION
IF %1 == U (	
	RENAME \\chlfp1\lvtims-outbound\ELIT\*.txt *.
)

PING 127.0.0.1 -n 3
:: For the paranoid: overwrite the temporary file before deleting it
TYPE NUL >ELITCON.ftp
DEL ELITCON.ftp

IF %1==D (	
	IF EXIST *.* (
	 MOVE *.* \\chlfp1\lvtims-inbound
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
  EXIT /B %tectiaoutput% 
  
:{CLEANUP}
    SET uploadfilter=
    SET	downloadfilter=
    SET username=
    SET password=
    SET server=

:{END}
