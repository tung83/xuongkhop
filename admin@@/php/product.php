<?php
function mainProcess($db)
{
    switch($_GET['type']){
        case 'product_cate':
            return product_cate($db);
            break;
        default:
            return product($db);
            break;
    }
}
function product_cate($db)
{
	$msg='';
    $act='product';
    $type='product_cate';
    $table='product_cate';
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
                    array('#','Danh mục sản phẩm')
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

function product($db)
{
	$msg='';
    $act='product';
    $type='product';
    $table='product';
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
            $sum=htmlspecialchars($_POST['sum']);
            $content=str_replace("'","",$_POST['content']);
            $meta_kw=htmlspecialchars($_POST['meta_keyword']);
            $meta_desc=htmlspecialchars($_POST['meta_description']);
            $home=$_POST['home']=='on'?1:0;
            $active=$_POST['active']=="on"?1:0;
            $file=time().$_FILES['file']['name'];
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
                'title'=>$title,'sum'=>$sum,'content'=>$content,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
                    try{
                $recent = $db->insert($table,$insert);
                if(common::file_check($_FILES['file'])){
                    WideImage::load('file')->resize(800,550, 'fill')->saveToFile(myPath.$file);
                    $db->where('id',$recent);
                    $db->update($table,array('img'=>$file));
                }
                header("location:".$_SERVER['REQUEST_URI'],true); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }			
	}
	if(isset($_POST["update"]))	{
            $update=array(
                'title'=>$title,'sum'=>$sum,'content'=>$content,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
            if(common::file_check($_FILES['file'])){
                WideImage::load('file')->resize(800,550, 'fill')->saveToFile(myPath.$file);
                $update = array_merge($update,array('img'=>$file));
                $form->img_remove($_POST['idLoad'],$db,$table);
            }
            try{
                $db->where('id',$_POST['idLoad']);
                $db->update($table,$update);  
                //header("location:".$_SERVER['REQUEST_URI'],true);   
            } catch (Exception $e){
                $msg = $e->getMessage();
                var_dump($msg);
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
                    array('#','Danh sách tin tức')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'product_cate',$_GET['hint'],0);
    
    $head_title=array('Tiêu đề','Hình ảnh','Hiện/Ẩn','STT');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE'); 
    $db->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);
    $count=$db->totalCount;

    if($db->count!=0){
        foreach($list as $item){
            $item_content = array(
                array($item['title'],'text'),
                array(myPath.$item['img'],'image'),
                array($item['active'],'bool'),
                array($item['ind'],'text')
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
            '.$form->textarea('sum',array('label'=>'Trích Dẫn','required'=>true)).'      
            '.$form->text('meta_keyword',array('label'=>'Keyword<code>SEO</code>','required'=>true)).'      
            '.$form->textarea('meta_description',array('label'=>'Meta Description<code>SEO</code>','required'=>true)).'   
            '.$form->ckeditor('content',array('label'=>'Nội dung','required'=>true)).'
             
        </div>
        <div class="col-lg-12">
            '.$form->file('img',800,550).'
            '.$form->number('ind',array('label'=>'Thứ tự')).'
            '.$form->checkbox('home',array('label'=>'Trang chủ')).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';	
	return $str;	
}
function product2($db){
    $msg='';
    $act='product';
    $type='product';
    $table='product';
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
        $storey=htmlspecialchars($_POST['storey']);
        $beds=intval($_POST['beds']);
        $landWidth=($_POST['landWidth']);
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
                    array('#','Danh sách sản phẩm')
                );

	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'product_cate',$_GET['hint'],0);

    $head_title=array('Name','Image','Price','Home','Show/Hide','Indicator');
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
            $img=$db->where('pId',$item['id'])->orderBy('ind','asc')->getOne('product_image','img');
            if(trim($img['img'])==='') $img='holder.js/130x100';else $img=myPath.$img['img'];   
            $item_content = array(
                array($item['title'],'text'),                           
                array($img,'image'),
                array($item['price'],'text'),   
                
                array($item['home'],'bool'),
                array($item['active'],'bool'),
                array($item['ind'],'text')
            );
            $addition=array(
                array('variable'=>array('act'=>$act,'type'=>$type,'id'=>$item['id']),'icon'=>'upload')
            );
            $str.=$form->table_body($item['id'],$item_content,$addition);
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
            '.$form->text('meta_keyword',array('label'=>'Keyword <code>SEO</code>')).'
            '.$form->textarea('meta_description',array('label'=>'Description <code>SEO</code>')).'
            '.$form->number('price',array('label'=>'Price')).'
            '.$form->select_options($db, 'storey','storey', 'Storey').' 
            '.$form->number('beds',array('label'=>'Beds')).'
            '.$form->number('landWidth',array('label'=>'Land Width')).'
            '.$form->ckeditor('feature',array('label'=>'Điểm nổi bật')).'            
            '.$form->ckeditor('content',array('label'=>'Mô tả chi tiết')).'
            '.$form->ckeditor('manual',array('label'=>'Ghi chú')).'           
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
?>
