<?php
function mainProcess($db)
{
    return buy($db);
}
function buy_cate($db)
{
	$msg='';
    $act='buy';
    $type='buy_cate';
    $table='buy_cate';
    $lev=1;
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');	
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $title=htmlspecialchars($_POST['title']);	   
        $meta_kw=htmlspecialchars($_POST['meta_keyword']);
        $meta_desc=htmlspecialchars($_POST['meta_description']);
        $active=$_POST['active']=="on"?1:0;
        $ind=intval($_POST['ind']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){           
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }   
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array(
                    'title'=>$title,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,
                    'ind'=>$ind,
                    'lev'=>$lev,
                    'active'=>$active
                );
		try{
            $recent = $db->insert($table,$insert);
            header("location:".$_SERVER['REQUEST_URI'],true); 
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }			
	}
	if(isset($_POST["update"]))	{
	   $update=array(
                    'title'=>$title,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,
                    'ind'=>$ind,
                    'lev'=>$lev,
                    'active'=>$active
                );
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);  
            header("location:".$_SERVER['REQUEST_URI'],true);   
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
            if($_POST['idLoad']!=8&&$_POST['idLoad']!=9&&$_POST['idLoad']!=10){
                $db->delete($table); 
                header("location:".$_SERVER['REQUEST_URI'],true);
            }
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    $page_head= array(
                    array('#','Buy Category')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'',$_GET['hint'],0);
    
    $head_title=array('Tiêu đề','Thứ tự','Hiển thị');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE');  
    $db->where('lev',1)->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);

    if($db->count!=0){
        foreach($list as $item){
            $item_content = array(
                array($item['title'],'text'),
                array($item['ind'],'text'),
                array($item['active'],'bool')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
	$str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'
            '.$form->text('meta_keyword',array('label'=>'Keyword <code>SEO</code>')).'
            '.$form->textarea('meta_description',array('label'=>'Description <code>SEO</code>')).'
        </div>
        <div class="col-lg-12">
            '.$form->number('ind',array('label'=>'Thứ tự','required'=>true)).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';	
	return $str;
}
function buy_cate_2($db){
    $msg='';
    $act='buy';
    $type='buy_cate_2';
    $table='buy_cate';
    $lev=2;
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');	
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $title=htmlspecialchars($_POST['title']);	   
        $meta_kw=htmlspecialchars($_POST['meta_keyword']);
        $meta_desc=htmlspecialchars($_POST['meta_description']);
        $active=$_POST['active']=="on"?1:0;
        $ind=intval($_POST['ind']);
        $pId=intval($_POST['frm_cate_1']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array(
                    'title'=>$title,'lev'=>$lev,'pId'=>$pId,
                    'active'=>$active,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,'ind'=>$ind
                );
		try{
            $recent = $db->insert($table,$insert);
            header("location:".$_SERVER['REQUEST_URI'],true); 
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }			
	}
	if(isset($_POST["update"]))	{
	   $update=array(
                    'title'=>$title,'lev'=>$lev,'pId'=>$pId,
                    'active'=>$active,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,'ind'=>$ind
                );
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);  
            header("location:".$_SERVER['REQUEST_URI'],true);   
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table); 
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    $page_head= array(
                    array('#','Danh mục sản phẩm cấp 2')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'buy_cate',$_GET['hint'],1);
    
    $head_title=array('Tiêu đề','Thuộc danh mục','Thứ tự','Hiển thị');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['cate_lev_1'])&&intval($_GET['cate_lev_1'])!=0) $db->where('pId',intval($_GET['cate_lev_1']));
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE');
    $db->where('lev',2)->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);

    if($db->count!=0){
        foreach($list as $item){
            $cate=$db->where('id',$item['pId'])->getOne('buy_cate','id,title');
            $item_content = array(
                array($item['title'],'text'),
                array(array($cate),'cate'),
                array($item['ind'],'text'),
                array($item['active'],'bool')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
	$str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'
            '.$form->cate_group($db,$table='buy_cate',1).'
            '.$form->text('meta_keyword',array('label'=>'Keyword <code>SEO</code>')).'
            '.$form->textarea('meta_description',array('label'=>'Description <code>SEO</code>')).'
            '.$form->number('ind',array('label'=>'Thứ tự','required'=>true)).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>';	
	return $str;
}
function buy($db){
    $msg='';
    $act='buy';
    $type='buy';
    $table='buy';
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $title=htmlspecialchars($_POST['title']);
        //$price=intval($_POST['price']);
        //$price_reduce=intval($_POST['price_reduce']);
        $meta_kw=htmlspecialchars($_POST['meta_keyword']);
        $meta_desc=htmlspecialchars($_POST['meta_description']);
        $content=str_replace("'","",$_POST['content']);     
        $feature=str_replace("'","",$_POST['feature']);
        $manual=str_replace("'","",$_POST['manual']);

        $active=$_POST['active']=="on"?1:0;
        $home=$_POST['home']=='on'?1:0;
        $ind=intval($_POST['ind']);
        $price=intval($_POST['price']);
        $storey=intval($_POST['storey']);
        $beds=intval($_POST['beds']);
        $landWidth=intval($_POST['landWidth']);
        $pId=intval($_POST['frm_cate_1']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table);
            } catch(Exception $e) {
                $msg=mysql_error();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array(
                    'title'=>$title,'content'=>$content,
                    'manual'=>$manual,
                    'feature'=>$feature,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,                                    
                    'home'=>$home,'active'=>$active,'pId'=>$pId,'ind'=>$ind,'price'=>$price
                    ,'storey'=>$storey,'beds'=>$beds,'landWidth'=>$landWidth
                );
		try{
            $db->insert($table,$insert);
            header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
	if(isset($_POST["update"]))	{
	   $update=array(
                    'title'=>$title,'content'=>$content,
                    'manual'=>$manual,
                    'feature'=>$feature,'meta_keyword'=>$meta_kw,
                    'meta_description'=>$meta_desc,
                    'price'=>$price,'price_reduce'=>$price_reduce,                    
                    'home'=>$home,'active'=>$active,'pId'=>$pId,'ind'=>$ind,'price'=>$price                   
                    ,'storey'=>$storey,'beds'=>$beds,'landWidth'=>$landWidth
                );
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);
            header("location:".$_SERVER['REQUEST_URI'],true);
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}

	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table);
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    
    $page_head= array(
                    array('#','Danh sách Buy')
                );

	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'buy_cate',$_GET['hint'],0);

    $head_title=array('Name','Home','Show/Hide','Indicator');
	$str.=$form->table_start($head_title);
    
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE'); 
    if(isset($_GET['cate_lev_1'])&&intval($_GET['cate_lev_1'])>0){
        $db->where('pId',intval($_GET['cate_lev_1']));
    }
    $db->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);
    $count=$db->totalCount;
    if($db->count!=0){
        $db_sub=$db;
        foreach($list as $item){
            $item_content = array(
                array($item['title'],'text'),
                
                array($item['home'],'bool'),
                array($item['active'],'bool'),
                array($item['ind'],'text')
            );
            $str.=$form->table_body($item['id'],$item_content);
        }
    }
	$str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='
	<form role="form" class="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
          '.$form->text('title',array('label'=>'Tên SP','required'=>true)).' 
            '.$form->ckeditor('content',array('label'=>'Nội dung')).'              
        </div>
        <div class="col-lg-12">
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
            '.$form->checkbox('home',array('label'=>'Trang chủ')).'            
            '.$form->number('ind',array('label'=>'Thứ tự')).'
    	</div>
        
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';
	return $str;
}
function buy_image($db){
    $msg='';
    $act='buy';
    $type='buy';
    $table='buy_image';
    $pId=intval($_GET['id']);
    
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
		$db->where('id',$_POST['idLoad']);
        $list = $db->getOne($table);
        $btn=array('name'=>'update','value'=>'Update');
        $form = new form($list);
	} else {
        $btn=array('name'=>'addNew','value'=>'Submit');
        $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
        $ind=intval($_POST['ind']);
        $active=$_POST['active']=="on"?1:0;
        $file=time().$_FILES['file']['name'];
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table);
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
        $insert = array('ind'=>$ind,'active'=>$active,'pId'=>$pId);
		try{
            $recent = $db->insert($table,$insert);
            if(common::file_check($_FILES['file'])){
                WideImage::load('file')->resize(420,350, 'fill')->saveToFile(myPath.$file);
                WideImage::load(myPath.$file)->resize(300,350, 'fill')->saveToFile(myPath.'thumb_'.$file);
                $db->where('id',$recent);
                $db->update($table,array('img'=>$file));
            }
            header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
	if(isset($_POST["update"]))	{
	   $update=array('ind'=>$ind,'active'=>$active);
       if(common::file_check($_FILES['file'])){
            WideImage::load('file')->resize(420,350, 'fill')->saveToFile(myPath.$file);
            WideImage::load(myPath.$file)->resize(300,350, 'fill')->saveToFile(myPath.'thumb_'.$file);
            $update = array_merge($update,array('img'=>$file));
            $db->where('id',$_POST['idLoad']);
            $last_img = $db->getOne($table,'img');
            if($last_img['img']!='') unlink(myPath.$last_img['img']);
        }
        try{
            $db->where('id',$_POST['idLoad']);
            $db->update($table,$update);
            header("location:".$_SERVER['REQUEST_URI'],true);
        } catch (Exception $e){
            $msg=$e->getMessage();
        }
	}

	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table);
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=mysql_error();
        }
	}
    $db->where('id',$pId);
    $pd=$db->getOne('buy','id,title,pId');
    $db->where('id',$pd['pId']);
    $cate=$db->getOne('buy_cate','id,title');

    $page_head= array(
                    array('#','Hình ảnh sản phẩm'),
                    array('main.php?act='.$act.'&type='.$type,$pd['title'].' <code><i class="fa fa-backward"></i></code>')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    $head_title=array('Hình ảnh','Thứ tự','Hiển thị');
	$str.=$form->table_start($head_title);
    
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
	$db->where('pId',$pId);
    $db->pageLimit=ad_lim;
	$list=$db->paginate($table,$page);
	$count= $db->totalCount;
	
	
    if($count>0){
        foreach($list as $item){
            $item_content = array(
                array(myPath.$item['img'],'image'),
                array($item['ind'],'text'),
                array($item['active'],'bool')
            );
            $str.=$form->table_body($item['id'],$item_content);
        }
    }
    $str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
            '.$form->file('img',420,350).'
            '.$form->number('ind',array('label'=>'Thứ tự','required'=>true)).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';
	return $str;
}
?>
