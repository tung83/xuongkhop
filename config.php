<?php
@ob_start();
@session_start();
session_cache_expire(0);
error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Saigon');

//Remove slash for get_magic_quote_gpc
$process = array(&$_GET, &$_POST, &$_COOKIE, &$_REQUEST);
while (list($key, $val) = each($process)) {
    foreach ($val as $k => $v) {
        unset($process[$key][$k]);
        if (is_array($v)) {
            $process[$key][str_replace(array('\\'), '', $k)] = $v;
            $process[] = &$process[$key][str_replace(array('\\'), '', $k)];
        } else {
            $process[$key][str_replace(array('\\'), '', $k)] = str_replace(array('\\'), '', $v);
        }
    }
}
unset($process);


//define area
define('_hostName'  , 'localhost');
//define('_userName'  , 'tung');	
//define('_dbName'    , 'hana2');	
//define('_pass'      , 'tung');
define('_dbName'    , 'xuongkhop');	
define('_userName'  , 'tung');	
define('_pass'      , 'tung');



define('domain'     ,'lavoine.vn');
define('root'       ,$_SERVER['DOCUMENT_ROOT']);
define('myWeb'      ,'/');
define('myPath'     ,'../file/upload/');
define('webPath'    ,'/file/upload/');
define('frontPath'   ,'/file/front/');

define('phpLib'     ,root.'/object/');
define('pageLib'    ,root.'/page/');
define('widgetLib'  ,root.'/widget/');
define('head_title'    ,'Lương y Lê Văn Chiến');


//define area end

//include area
include_once phpLib.'MysqliDb.php';
include_once phpLib.'Pagination.php';
include_once phpLib.'wideimage/WideImage.php';
include_once phpLib.'common.php';
include_once phpLib.'class.visitors.php';

global $db;
$db = new MysqliDb(_hostName,_userName,_pass,_dbName);
$db->connect();
//include area end

//set default variable
$lang=isset($_GET['lang'])?$_GET['lang']:'vi';
$view=isset($_GET['view'])?$_GET['view']:'trang-chu';
//set default variable end
?>