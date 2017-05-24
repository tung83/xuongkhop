<?php
include_once 'front.php';
$act=$_POST['act'];
switch($act){
    case 'subscribe':    
        $insert=array(
                'name'=>$_POST['name'],
                'address'=>$_POST['address'],
                'phone'=>$_POST['phone'],
                'email'=>$_POST['email'],
                'content'=>$_POST['content'],
                'dates'=>date("Y-m-d H:i:s")
            );
        $db->insert('subscriber',$insert); 
        break;
    default:
        break;
}
?>