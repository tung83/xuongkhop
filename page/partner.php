<?php
class partner extends base{
    function __construct($db){
        parent::__construct($db,7,'partner_detail');
    }
    function ind_partner($db){
        $this->db->reset();
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('partner_detail',5);
        $str='
        <div class="ind-partner">  
            <div class="container">
                <div class="row">   
                <div class="row">    
                    <div class="col-xs-12">
                        <div class="partner-title-head">
                            <span>Welcome to JJ KETSA
                            </span>
                            <p class="sub-sum">'
                                .common::qtext($db,7).
                            '</p>
                        </div>
                    </div>
                    <div class="col-md-2 hidden-sm hidden-xs visible-md visible-lg">

                    </div>';   
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']);
            $img=webPath.$item['img'];
            if($img=='') $img='holder.js/126x100';
            $str.='
                    <div class="col-md-2 col-sm-3 col-xs-12 partner-col wow fadeIn animated" data-wow-duration="1000ms">
                        <div class="partner-item">
                            <img src="'.$img.'" alt="'.$item['title'].'" class="img-responsive"/>
                        </div>
                    </div>';   
        }
        $str.='     <div class="col-md-2 col-sm-3 col-xs-12 partner-col wow fadeIn animated" data-wow-duration="1000ms">
                        <div class="partner-item">
                            <a href="'.$lnk.'">
                                <img src="'.frontPath.'partner_dots.png" alt="'.$item['title'].'" class="img-responsive"/>
                            </a>
                        </div>
                    </div>  
                    <div class="col-md-2 hidden-sm hidden-xs visible-md visible-lg">

                    </div>
                    <div class="clearfix"></div>
                       
                    </div>
                </div>
                </div>
            </div>';
        return $str;
    }
    
    function partner_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
         return '
            <div class="col-md-2 wow fadeIn animated partner-col" data-wow-duration="1000ms">
                <div class="partner-item item">
                    <a href="'.$lnk.'">
                        <img src="'.webPath.$item['img'].'" class="img-responsive center-block"/>
                    </a>               
                </div>
                    <div class="item-title">
                        <a href="'.$lnk.'">
                            <h3>'.$item['title'].'</h3>
                        </a>
                        <div class="partner-sum">
                                <span>'.nl2br(common::str_cut($item['sum'],620)).'</span>
                        </div>
                    </div>
            </div>';
       
    }
    function partner_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('partner_detail',$page);
        $count=$this->db->totalCount;
        $str.='<div class="partner-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->partner_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId==0){
            $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        }else{     
            $pg->defaultUrl = myWeb.$this->view;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function partner_one($id=1){
        $item=$this->db->where('id',$id)->getOne('partner_detail');
        $title=$item['title'];
        $content=$item['content'];
        return  
            '<article>
                <div class="text-center">
                    <h2 class="page-title">'.$title.'</h2>
                </div>
                <p>'.$content.'</p>
            </article>';                        
    }
    function partners(){
        
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get('partner');
    $str.='<section class="ind-partner">
    <div >
        <div id="partner-slider">';
        foreach($list as $item){
            
		$href = $row->lnk != '' ? $row->lnk : '#';
            $str.='<div><a class="thumb" href="'.$href.'"><img src="'.webPath.$item['img'].'" alt=""></a></div>';
        }
        $str.='</div>
        </div>
    </section>';
            $str.=' 
    <script type="text/javascript">
        $(function() {
            $("#partner-slider").slick({
                infinite: true,
                speed: 300,
                variableWidth: true
            })
        })
    </script>';
            return $str;
    }
}

