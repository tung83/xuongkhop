<?php
include_once 'front.php';
$act=$_POST['act'];
switch($act){
    case 'subscribe':    
        $insert=array(
                'email'=>$_POST['email'],
                'dates'=>date("Y-m-d H:i:s")
            );
        $db->insert('subscriber',$insert); 
        break;
    default:
        break;
}
?>