<?php
class service extends base{
    function __construct($db){
        parent::__construct($db,10,'service');
    }
    function ind_service(){
        $str.='
        <section class="ind-service"> 
            <div class="col-xs-12">
                <div class="title-head">
                    <span>'
                        .$this->title.' 
                    </span>
                </div>
            </div>
            <div class="clearfix"></div>';
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('service');   
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $img=webPath.$item['img'];
            $str.='
            <div class="col-md-2 col-sm-3 service-col wow bounceIn animated" data-wow-duration="2s">
                <div class="service-item item">
                    <a href="'.$lnk.'">
                        <img src="'.$img.'" class="img-responsive center-block"/>
                    </a>
                    <a href="'.$lnk.'">                    
                        <p class="item-title text-center">'.$item['title'].'</p>
                    </a>
                </div>
            </div>';
        }
        $str.=' 
            <div class="clearfix"></div>
            <div class="text-center">
                <a class="btn btn-primary btn-primary-long see-more" href="'.myWeb.$this->view.'">'.more_button.'</a>      
            </div>
        </section><!--/#partner-->';
        
        return $str;
    }
    function service_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=webPath.$item['img'];
        return '
        <div class="col-md-2 col-sm-3 service-col wow bounceIn animated" data-wow-duration="2s">
            <div class="service-item item">
                <a href="'.$lnk.'">
                    <img src="'.$img.'" class="img-responsive center-block"/>
                </a>
                <a href="'.$lnk.'">                    
                    <p class="item-title text-center">'.$item['title'].'</p>
                </a>
            </div>
        </div>';
    }
    function service_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('service',$page);
        $count=$this->db->totalCount;
        $str.='<div class="service-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->service_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function service_one($id=1){
        $item=$this->db->where('id',$id)->getOne('service');
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
}

