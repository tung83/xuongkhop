<?php
//http://bootsnipp.com/snippets/z4Wor
class sell extends base{
    function __construct($db){        
        parent::__construct($db,4,'sell');
    }
    function ind_sell($sum_text){ 
        $str.='<div class="row">
                     <div class="col-xs-12 title-head pull-left">
                        '.$this->title.'                  
                    </div>               
                </div>';
            $str.='
            <div class="row sell-item item wow bounceIn animated" data-wow-duration="2s">               
                    <p class="sell-item-sum">'.$sum_text.'</p>
            </div>';           
        return $str;
    }
    function hot_sell(){
        $this->db->reset();
        $this->db->where('active',1)->where('home',1);
        $list=$this->db->get('sell',null);
        $i=1;
        foreach($list as $item){
            if($i%4==1){
                $str.='
                <div class="row">';
            }
            $str.=$this->sell_item($item);
            if($i%4==0){
                $str.='
                </div>';
            }
            $i++;
        }   
        if($i%4!=1){
            $str.='
            </div>';
        }
        return $str;
    }
    function sell_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=$this->first_image($item['id']);
        $str.='
            <div class="col-md-4 wow fadeIn animated sell-col" data-wow-duration="1000ms">
                <div class="sell-item item">
                    <a href="'.$lnk.'">
                        <img src="'.webPath.$img.'" class="img-responsive center-block"/>
                    </a>               
                </div>
                <a href="'.$lnk.'">
                    <p class="item-title">'.$item['title'].'</p>
                </a>
            </div>';
        return $str;
    }
    function sell_list_item($item,$type=1){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=$this->first_image($item['id']);
        if(trim($img)==='') $img='holder.js/400x300';else $img=webPath.$img;
        if($type==1){
            $str='
            <div class="col-md-12 col-sm-6 col-md-3 sell-item">';    
        }else{
            $str='
            <div class="col-md-12 col-sm-6 col-md-4 sell-item">';
        }        
        $str.='
        <a href="'.$lnk.'">
            <div>
                <p>'.($item['price']==0?contact:number_format($item['price'],0,',','.').' VNĐ').'</p>
                <img src="'.$img.'" class="img-responsive" />
                <p>
                    <h2>'.$item['title'].'</h2>
                    <button class="btn btn-default">'.more.'</button>
                </p>
            </div>
        </a>
        </div>';
        return $str;
    }
    function category(){
        $pId=$this->check_pId();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get('sell_cate',null,'id,title');
        $str='
        <div class="row sell-category">
        <div class="col-xs-12">';
        foreach($list as $item){
            if($item['id']==$pId){
                $active=' class="active"';
            }else{
                $active='';
            }
            $str.='
            <a href="'.myWeb.$this->view.'/'.common::slug($item['title']).'-p'.$item['id'].'"'.$active.'>
                '.$item['title'].'
            </a>';
        }
        $str.='
        </div>
        </div>';
        return $str;
    }
    function sell_cate(){
        $pId = $this->check_pId();
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        if($pId!=0){
            $this->db->where('pId',$pId);
        }
        $this->db_orderBy();
        $this->db->pageLimit=24;
        $list=$this->db->paginate('sell',$page);
        $count=$this->db->totalCount;
        $str.='<div class="sell-list">'
                . '<div class="row">';
        if($count>0){
            foreach($list as $key=>$item){
                $str.=$this->sell_item($item);
            }
        }        
        $str.=      '</div>'
                .'</div>'
                .'<div class="clearfix"></div>';
        
        $pg=new Pagination(array('limit'=>24,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId==0){
            $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        }else{
            $cate=$this->db->where('id',$pId)->getOne('sell_cate','id,title');       
            $pg->defaultUrl = myWeb.$this->view.'/'.common::slug($cate['title']).'-p'.$cate['id'];
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
        
    function sell_search($db){
        
        $str.='<div class="container"> 
                  <div class="row">
                <div class="title-head">
                <span>'.$this->title.'
                </span>
                <p class="sub-sum"><span>'
                    .common::qtext($db,6).
                '</span></p>
            </div> ';
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $searchStr='';
        if($_GET['storey'] !=""){
            $this->db->where('storey',$_GET['storey']); 
            $searchStr.=" Storey: ".$_GET['storey'];
        }
        
        if($_GET['minBeds'] !=""){
            $this->db->where('beds',$_GET['minBeds'], '>='); 
            $searchStr.=" Min Beds: ".$_GET['minBeds'];
        }
        if($_GET['maxBeds'] !=""){
            $this->db->where('beds',$_GET['maxBeds'], '<='); 
            $searchStr.=" Max Beds: ".$_GET['maxBeds'];
        }
        if($_GET['landWidth'] !=""){
            $this->db->where('landWidth',$_GET['landWidth']); 
            $searchStr.=" Land Width: ".$_GET['landWidth'];
        }
        if($_GET['minPrice'] !=""){
            $this->db->where('price',$_GET['minPrice'], '>='); 
            $searchStr.=" Min Price: ".$_GET['minPrice'];
        }
        if($_GET['maxPrice'] !=""){
            $this->db->where('price',$_GET['maxPrice'], '>='); 
            $searchStr.=" Max Price: ".$_GET['maxPrice'];
        }
        $this->db_orderBy();
        $this->db->pageLimit=200;
        $list=$this->db->paginate('sell',$page);        
        $count=$this->db->totalCount;
       $str.='<div class="alert alert-success"><i class="icon fa fa-check"></i>
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                There are '.$count. ' result(s) from your search<b> "'.$searchStr.'"</b>
              </div>';
        $str.='<div class="sell-list">'
                . '<div class="row">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->sell_item($item);
            }
        }        
        $str.=      '</div>'
                .'</div>'
                .'<div class="clearfix"></div>';
        
        $pg=new Pagination(array('limit'=>200,'count'=>$count,'page'=>$page,'type'=>0));  
             
            $pg->defaultUrl = myWeb.search_view.'/'.$_GET['hint'];
            $pg->paginationUrl = myWeb.search_view.'/page[p]'.'/'.$_GET['hint'];
        
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        $str.= '</div></div>';
        return $str;
    }
    function sell_one($id){
        $this->db->where('id',$id);
        $item=$this->db->getOne('sell','id,price,price_reduce,title,content,pId,feature,manual,promotion,video');
        $this->db->where('pId',$item['pId'])->where('id',$item['id'],'<>')->where('active',1)->orderBy('rand()');
        $list=$this->db->get('sell');
        $lnk=domain.'/'.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $str.='
        <div class="row sell-detail clearfix">
            
            <div class="col-xs-12">
            <div class="col-md-5">
                '.$this->sell_image_show($item['id']).'
            </div>
                <article class="sell-one">
                <h1>'.$item['title'].'</h1>';
                    
                $str.='
                <p>'.$item['feature'].'</p>
                </article>
                                 
                <div class="detailed">       
                    <h4><i class="fa fa-file-text-o"></i> DETAILS</h4>
                    <article>
                            <p>'.$item['content'].'</p>
                    </article>      
                </div>
            </div>
        </div>  
        <script>
            $(document).on("click", ".number-spinner button", function () {    
            var btn = $(this),
                    oldValue = btn.closest(".number-spinner").find("input").val().trim(),
                    newVal = 0;

            if (btn.attr("data-dir") == "up") {
                    newVal = parseInt(oldValue) + 1;
            } else {
                    if (oldValue > 1) {
                            newVal = parseInt(oldValue) - 1;
                    } else {
                            newVal = 1;
                    }
            }
            btn.closest(".number-spinner").find("input").val(newVal);           

        });
        </script>';
        if(count($list)>0){
            $str.='
            <h3 class="small-title">
                    OTHERS
            </h3>';
            $str.='<div class="slick sell_list clearfix">';

            foreach($list as $item){                
                $str.=$this->sell_item($item);                
            }  
            $str.='</div>';  
        }        
        return $str;
    }
    function first_image($id){
        $this->db->reset();
        $this->db->where('active',1)->where('pId',$id);
        $this->db_orderBy();
        $img=$this->db->getOne('sell_image','img');
        return $img['img'];
    }
    function sell_image_show($id){
        $this->db->reset();
        $this->db->where('active',1)->where('pId',$id);
        $this->db_orderBy();
        $list=$this->db->get('sell_image');
        $temp=$tmp='';
        foreach($list as $item){
            $temp.='
            <li>
                <a href="'.webPath.$item['img'].'" >
                    <img src="'.webPath.$item['img'].'" alt="" title="" class="zoom" data-zoom-image="'.webPath.$item['img'].'"/>
                </a>
            </li>';
            $tmp.='
            <li>
                <img src="'.webPath.$item['img'].'" alt="" title=""/>
            </li>';
        }
        $str.='
        <!-- Place somewhere in the <body> of your page -->
        <div id="image-slider" class="flexslider">
          <ul class="slides popup-gallery">
            '.$temp.'
          </ul>
        </div>
        <div id="carousel" class="flexslider" style="margin-top:-50px;margin-bottom:10px">
          <ul class="slides">
            '.$tmp.'
          </ul>
        </div>
        <script>
        $(window).load(function() {
          // The slider being synced must be initialized first
          $("#carousel").flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 80,
            itemMargin: 5,
            asNavFor: "#image-slider"
          });

          $("#image-slider").flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            sync: "#carousel"
          });
        });
        </script>';
        return $str;
    }

//          $(".zoom").elevateZoom({
//		cursor: "pointer", 
//		imageCrossfade: true,
//                 galleryActiveClass: "active", 
//	});  
    function sell_cate_left_list(){
        $pId = $this->check_pId();
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get($this->db_cate_name);
        
        $str.='
            <div class="col-md-3 sell-col">
                <div class="sell-item sell-menu-container item">    
                    <ul class="sell-menu">';
                    foreach($list as $cate){
                        $active_class = ($pId!=0 && $cate["id"] == $pId)? 'active' : '';
                        $title=$cate['title'];
                        $str.='
                        <li class="'.$active_class.'"><a href="'.myWeb.$this->view.'/'.common::slug($title).'-p'.$cate["id"].'"><span></span>'.$title.'</a><hr></li>';   
                    }
        $str.='
                    </ul>
                </div>
            </div>';
        return $str;
    }
    
    function sell_cate_list(){
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get($this->db_cate_name);
        $str.='<ul class="sell-menu">';
        foreach($list as $cate){
            $title=$cate['title'];
            $str.='
            <li><a href="'.myWeb.$this->view.'/'.common::slug($title).'-p'.$cate["id"].'">'.$title.'</a></li>';   
        }
        $str.='</ul>';
        return $str;
    }
}
?>