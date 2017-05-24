<?php
include_once 'front.php';
include_once 'object/form.php';
common::page('base');
function pageId($view){
    if($view == 'trang-chu')
    {
        return 'home-page';
    }
    return '';
}
function menu($db,$view){
   
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
             
    <div class="header">
        <div class="wsmobileheader clearfix">
            <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
            <a href="'.myWeb.'" class="smallogo"><img src="'.frontPath.'logo.png" height="43" alt="" /></a>
            <a class="callusicon" href="tel:'.common::qtext($db,5).'"><span class="fa fa-phone"></span></a>
        </div>  
        <div class="header-wrap">
            <div class="container">
                <div class="row">
                    <div class="row header-top">
                        <div class="col-md-4 logo hidden-xs hidden-sm">
                            <a href="'.myWeb.'" title="logo"><img src="'.frontPath.'logo.png" alt="" style=""/></a>
                        </div>
                        <div class="header-right hidden-xs hidden-sm">                            
                            <div class="hotline">
                                <a href="tel:'.common::qtext($db,2).'">                                  
                                    <img src="'.frontPath.'phone.png" height="70" alt="" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="menu-ground">
    <div class="container clearfix bigmegamenu">
    <div class="row">      
        <!--Main Menu HTML Code-->
        <nav class="wsmenu clearfix">
            <ul class="mobile-sub wsmenu-list">';
        foreach($list as $item){
            $active=($view==$item['view'])?'active':'';
if(($view == 'trang-chu' && $item['view'] =='home') || ($view == 'search' && $item['view'] =='build') ||($view == 'search_sell' && $item['view'] =='sell'))
    {
            $active='active';
    }
            $title=$item['title'];
            $lnk=myWeb.$item['view'];  
            $str.='
                <li><a href="'.$lnk.'"  class="'.$active.'">'.$title.'</a></li>';
        }
        $str.='  
                <li>'.social($db).'</li>         
            </ul>
        </nav>
        <!--Menu HTML Code-->    
    </div>    
    </div>   
    </div>    
    </div>';
    return $str;
}

function page_header($view, $db)
{
    $item_table = null;
    $cate_table = null;
    $info_table = null;
    switch ($view) {
        case 'san-pham':
            $item_table = 'product';
            $cate_table = 'product_cate';
            break;
        case 'tin-tuc':   
        case 'tuyen-dung':   
            $item_table = 'news';
            $cate_table = 'news_cate';
            break;  
            
    } 
    if($item_table){
        if (isset($_GET['id'])) {
            $db->where('id', intval($_GET['id']));
            $info_table = $item_table;
        }elseif(isset($_GET['pId'])){
            $db->where('id', intval($_GET['pId']))->where('lev',1);
            $info_table = $cate_table;
        }
    }
    if(!isset($info_table)){
        $db->where('view', $view);
        $info_table = 'menu';
    }
    $item = $db->getOne($info_table, 'title,meta_keyword,meta_description');
    $param = array(
            'title' => $item['title'],
            'keyword' => $item['meta_keyword'],
            'description' => $item['meta_description']);
    
    $title = $param['title'] === '' ? head_title : $param['title']. ' - '.head_title;
    $param['title'] = '.:'.$title.':.';
    $param['meta_keyword'] = $param['meta_keyword'] === '' ? head_keyword : $param['meta_keyword'];
    $param['meta_description'] = $param['meta_description'] === '' ?
        head_description : $param['meta_description'];
    common::page_head($param);
}
function foot_menu($db,$view){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
    <ul class="foot-menu">';
    foreach($list as $item){
        $title=$item['title'];
        if($title !="BIẾN TẦN" && $title !="SERVO" && $title !="ĐỘNG CƠ")
        {
            $db_view=$item['view'];
            $str.='
            <li><a href="'.myWeb.$db_view.'">'.$title.'</a></li>';
        }
    }
    $str.='
    </ul>';
    return $str;
}
function foot_product_cate($db,$view){   
    common::page('product');
    $product=new product($db);
    return $product->product_cate_list();    
}
function foot_buy_cate($db,$view){   
    common::page('buy');
    $buy=new buy($db);
    return $buy->buy_cate_list();    
}
function foot_sell_cate($db,$view){   
    common::page('sell');
    $sell=new sell($db);
    return $sell->sell_cate_list();    
}

function home($db){    
    $str='
    <section id="ind-slider">
        <div id="slider-box">
            '.wow_slider($db).'
        </div>
    </section>';  
    common::page('about');
    $about=new about($db);
    $str.=$about->ind_about(common::qtext($db,15));  
    common::page('product');
    $product=new product($db);
    $str.=$product->ind_product($db);
    common::page('duoclieu');
    $duoclieu=new duoclieu($db);
    $str.=$duoclieu->ind_duoclieu();
    $str.=ind_baithuocquy_tintuc($db);
    $str.=ind_tuvan_guicauhoi($db);
    //$str.='<div id="google-map"> </div>';
    //$str.=gmap();
    
    /*$str.=partner($db);*/
    return $str;
}
function ind_baithuocquy_tintuc($db){
    common::page('baithuocquy');
    $baithuocquy=new baithuocquy($db);
    common::page('news');
    $news=new news($db);
    return '<div class="container"><div class="row">
            <div class="col-md-6">
                <div class="">'.
                   $baithuocquy->ind_baithuocquy().                   
                '</div>
            </div>
            <div class="col-md-6">'.
                $news->ind_news().  
            '</div>
        </div>
        </div>';
}

function ind_tuvan_guicauhoi($db){
    common::page('tuvan');
    $tuvan=new tuvan($db);
    return '<div class="container"><div class="row">
            <div class=" col-md-6">
                <div class="">'.
                   $tuvan->ind_tuvan().                   
                '</div>
            </div>
            <div class="col-md-6">'.
                submit_mail().   
            '</div>
        </div>
        </div>';
}

function submit_tuvan(){
    return '<section id="tuvan-subscribe">
        <div class="">
            <div class="title-head">
                <span>Gửi câu hỏi tư vấn 
                </span>
            </div>
            <form data-toggle="validator" role="form"  action="" id="subscribe">
            <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" name="name" class="form-control" required placeholder="Họ và tên" />
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="text" name="address" class="form-control" placeholder="Địa chỉ" />
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" placeholder="Điện thoại" />
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="email" name="email" class="form-control" required placeholder="Email" />
                    <div class="help-block with-errors"></div>
                </div> 
            </div>  
            <div class="col-md-6">
                <div class="form-group">
                    <textarea name="content" id="content" required class="form-control"  placeholder="Nội dung" rows="8"></textarea>
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="submit" class="btn btn-primary form-control"  value="Gửi">
                </div>
            </div>  
            </form>
        </div>
    </section>';
}

function submit_mail(){
    return '<section id="home-subscribe">
        <div class="">
            <div class="title-head">
                <span>Gửi câu hỏi tư vấn 
                </span>
            </div>
            <form data-toggle="validator" role="form"  action="" id="subscribe">
                <div class="form-group">
                    <input type="text" name="name" class="form-control" required placeholder="Họ và tên" />
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="email" name="email" class="form-control" required placeholder="Email" />
                    <div class="help-block with-errors"></div>
                </div>  
                <div class="form-group">
                    <textarea name="content" id="content" required class="form-control"  placeholder="Nội dung" rows="8"></textarea>
                    <div class="help-block with-errors"></div>
                </div> 
                <div class="form-group">
                    <input type="submit" class="form-control btn btn-primary"  value="Gửi">
                </div>
            </form>
        </div>
    </section>';
}
function wow_slider($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $hasTitle = count($list) > 0 && isset($list[0]['title']) && $list[0]['title'] != "";
$notHasTitle = (!$hasTitle)? ' not-has-title' :'';
    $str.='
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1" class="'.$notHasTitle.'">
	<div class="ws_images"><ul>';
    $i=1;

    foreach($list as $item){
		if($hasTitle){
			$img='<img src="'.webPath.$item['img'].'" alt="" title="'.$item['title'].'" />';
			$lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'">'.$item['sum'].'</a>':$img.$item['sum'];
		}
		else{
			$img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
			$lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'"></a>':$img;
		}
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title=""><span>'.$i.'</span></a>';
if($hasTitle){
        $tmp.='<br />';
}
        $i++;
    }
    $str.='
	</ul></div>';
		if($hasTitle){

    $str.='
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div>';
}else{
 $str.='
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div>';
}
    $str.='
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
	<script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
	<!-- End WOWSlider.com BODY section -->';
    return $str;
}
function slide($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $str.='
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<div id="wowslider-container1">
	<div class="ws_images"><ul>';
    $i=1;
    $tmp='';
    foreach($list as $item){
        $img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
        if($item['lnk']!=''){
            $lnk='<a href="'.$item['lnk'].'">'.$img.'</a>';
        }else{
            $lnk=$img;
        }
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title="images"><span>'.$img.$i.'</span></a>';
        $i++;
    }
    $str.='
	</ul></div>
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div><div class="ws_script" style="position:absolute;left:-99%"></div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
	<script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
	<!-- End WOWSlider.com BODY section -->';
    return $str;
}
function contact($db){
    $str.='
    <section id="page">';
    common::page('contact');
    $contact=new contact($db);
    $str.=$contact->contact(); 
    $str.=$contact->bottom_content();    
    $str.=gmap();
    $str.='
    </section>';
    return $str;
}
function about($db){ 
    $str.='
    <section id="about-page">';
     $str.='
            <div class="about-container"></div>'; 
    common::page('about');
    $about=new about($db);
    $str.=$about->about_one();
    $str.='
    </section>';
    return $str;    
}
function partner($db){ 
    $str.='
    <section id="page">';
    common::page('partner');
    $partner=new partner($db);
    $str.=$partner->top_content();
    $str.=$partner->bottom_content(); 
    $str.= '<section id="partner-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partner_cate();
    $str.='</div></div></section>';
    $str.= '<section id="slider-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partners();
    $str.='</div></div></section>'; 
    $str.='
    </section>';
    return $str;    
}
function news($db){
    common::page('news');
    $news=new news($db);
    $str.='
            <div class="news-container">
            <div class="container">
            <div class="row">
                <img src="/file/front/news_banner.png" class="img-responsive">
            </div></div></div>'; 
    $str.=$news->top_content();
    if(isset($_GET['id'])){
        $str.=$news->news_one(intval($_GET['id']));    
    }else{
        $str.=$news->news_cate();
    }     
    $str.=$news->bottom_content(); 
    return $str;
}
function duoclieu($db){
    common::page('duoclieu');
    $duoclieu=new duoclieu($db);
    $str.='
            <div class="about-container"></div>'; 
    $str.=$duoclieu->top_content();
    if(isset($_GET['id'])){
        $str.=$duoclieu->duoclieu_one(intval($_GET['id']));    
    }else{
        $str.=$duoclieu->duoclieu_cate();
    }     
    $str.=$duoclieu->bottom_content(); 
    return $str;
}

function baithuocquy($db){
    common::page('baithuocquy');
    $baithuocquy=new baithuocquy($db);
    $str.='
            <div class="about-container"></div>'; 
    $str.=$baithuocquy->top_content();
    if(isset($_GET['id'])){
        $str.=$baithuocquy->baithuocquy_one(intval($_GET['id']));    
    }else{
        $str.=$baithuocquy->baithuocquy_cate();
    }     
    $str.=$baithuocquy->bottom_content(); 
    return $str;
}
function tuvan($db){
    common::page('tuvan');
    $tuvan=new tuvan($db);
    $str.='
            <div class="tuvan-container">
            <div class="container">
            <div class="row">
                <img src="/file/front/tuvan-banner.png" class="img-responsive">
            </div></div></div>'; 
    $str.=$tuvan->top_content();
    if(isset($_GET['id'])){
        $str.=$tuvan->tuvan_one(intval($_GET['id']));    
    }else{
        $str.=$tuvan->tuvan_cate();
    }  
    $str.=submit_tuvan();
    $str.=$tuvan->bottom_content(); 
    return $str;
}
function buy($db){
    common::page('buy');
    $buy=new buy($db);
    $str.=$buy->top_content_sum(common::qtext($db,10));
    if(isset($_GET['id'])){
        $str.=$buy->buy_one(intval($_GET['id']));    
    }else{
        $str.=$buy->buy_cate();
    }     
    $str.=$buy->bottom_content(); 
    return $str;
}
function product($db){
    $str.='
    <section id="product-page">';  
    common::page('product');
    $pd=new product($db);
    
    if(isset($_GET['id'])){
        $str.=$pd->product_one(intval($_GET['id']));    
    }
    else{
        $str.=$pd->product_cate();
        $str.=resize_product_cate();
    }
    $str.=$pd->bottom_content(); 
    return $str;
}
function search_product($db){
    $str.='
    <section id="search-product-page">';  
    $str.=search_form($db);
    common::page('product');
    $pd=new product($db);
    $str.=$pd->product_search($db);   
    return $str;
}
function search($db){
    $str.='
    <section id="search-page">';  
    $str.=search_form($db);
    common::page('product');
    $pd=new product($db);
    $str.=$pd->product_search($db);    
    common::page('sell');
    $pd=new sell($db);
    $str.=$pd->sell_search($db);   
    return $str;
}
function shadowBottom(){
    return '<div class="container">  
                <div id="shadow-bottom" class="row">
                </div>
            </div>';
}
function shadowBottomRow(){
    return '<div id="shadow-bottom" class="row">
            </div>';
}
function shadowBottomDent(){
    return '<div id="dent-shadow-bottom" class="row">
            </div>';
}

function social($db){
    $basic_config=$db->where('id',1)->getOne('basic_config','social_twitter, social_facebook');
    $str.='
        <ul id="social_block"> 
            <li>
                <a class="facebook-link" href="'.$basic_config['social_facebook'].'" target="_blank"><i class="fa fa-facebook"></i></a>
            </li>
            <li>
                <a href="'.$basic_config['social_twitter'].'" target="_blank"><i class="fa fa-instagram"></i></a>
            </li>
        </ul>
    ';
    return $str;
}
   
function resize_product_cate(){      
    return '
        <script>   
        $(document).ready(function() {
            $(window).resize(function() {
                if($(window).width() > 992 && $(".product-item").length > 1)
                {
                    var productItemHeight = $($(".product-item")[1]).height();
                    $(".product-menu-container").height(productItemHeight -1);
                }
                
            }).resize();
        });
        </script>';
}
function gmap(){      
    return '
        <script>   
            function initMap() {
                var companyAddress = {lat:-37.846906,lng: 144.978564};
                var addCenter = {lat: -37.846,lng: 144.978564};
                var map = new google.maps.Map(document.getElementById("google-map"), {
                  zoom: 17,
                  fullscreenControl: true,
                  center: addCenter,
                    scrollwheel: false,
                });
                var marker = new google.maps.Marker({
                  position: companyAddress,
                  map: map,
                  title: "Suite 116, 566 St Kilda Road, Melbourne Vic 3004"
                });
                var lequangdinhContentString = 
                      "<h4 style=\"color: #ff578f\">JJ Ketsa Property Agents</h4>" +
                      "<p>116/566 St Kilda Rd, Melbourne VIC 3004</p>" +
                      "<a  target=\"_blank\"href=\"https://www.google.com/maps/place/116%2F566+St+Kilda+Rd,+Melbourne+VIC+3004,+Australia/@-37.8468949,144.9763762,17z/data=!4m5!3m4!1s0x6ad6681746e892eb:0x2f4f5d2de9c5f51d!8m2!3d-37.8468949!4d144.9785649\">Get direction</a>";
                    var infowindow = new google.maps.InfoWindow({
                    content: lequangdinhContentString
                  });
                  infowindow.open(map, marker);
              }
        </script>
        <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVWAnZRS56JnP5Nr5otnuzg47TsmJoKBM&callback=initMap">
        </script>';
    
    return $str;
}

function search_form($db){
    return    
        '<div class="search-box">
            <div class="container">
                <div class="row">
                    <form  id="search"  class="form-horizontal search-form" role="form">
                        <input type="hidden" id="search-link" value="'.myWeb.'search/" />
                        <input type="hidden" id="search-sell-link" value="'.myWeb.'search_sell/" />'                                        
                                    
                        . select_options($db, 'storey','storey', 'Storey')
                        . select_options($db, 'beds','min_beds', 'Min. Beds')
                        . select_options($db, 'beds','max_beds', 'Max. Beds')
                        . select_options_land_width($db)
                        . select_options_min_price($db)
                        . select_options_max_price($db)
                        . seach_button().                    
                    '<p>***</p>
                        </form>
                </div>
            </div>
        </div>';
}
?>
