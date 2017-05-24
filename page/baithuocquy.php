<?php
class baithuocquy extends base{
    function __construct($db){
        parent::__construct($db,5,'baithuocquy');
    }
    function ind_baithuocquy(){
        $this->db->reset();
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('baithuocquy',10);
        $str='
        <div class="ind-baithuocquy">  
                <div class="row">    
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>'
                                .$this->title.' 
                            </span>
                        </div>
                    </div>';
        foreach($list as $key=>$item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $img=webPath.$item['img'];
            if($img=='') $img='holder.js/126x100';
            if($key == 0){
                 $str.='
                    <div class="baithuocquy-col wow fadeIn animated" data-wow-duration="100ms">
                        <div class="baithuocquy-item">
                            <div class="col-md-6">
                                <a href="'.$lnk.'">
                                    <img src="'.$img.'" alt="'.$item['title'].'" class="img-responsive"/>
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a href="'.$lnk.'">
                                    <p class="baithuocquy-item-title">'.$item['title'].'</p>
                                </a>
                                <p class="baithuocquy-item-sum">'.$item['sum'].'</p>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>  ';    
            }
            else{
                $str.='
                        <div class="baithuocquy-col wow fadeIn animated" data-wow-duration="100ms">
                            <div class="baithuocquy-item">
                                 <div class="col-md-3">
                                    <a href="'.$lnk.'">
                                            <img src="'.$img.'" alt="'.$item['title'].'" class="img-responsive"/>
                                    </a>
                                </div>
                                <div class="col-md-9">
                                    <a href="'.$lnk.'">
                                        <p class="baithuocquy-item-title">'.$item['title'].'</p>
                                    </a>
                                    <p class="baithuocquy-item-sum">'.$item['sum'].'</p>
                                </div>
                            </div>
                        </div>
                    <div class="clearfix"></div>  ';    
            }
        }
        $str.='
                    <div class="clearfix"></div>
                    </div>
            </div>';
        return $str;
    }
    function baithuocquy_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        return '
            <div class="row baithuocquy-item wow fadeInLeft animated" data-wow-duration="1000ms" data-wow-delay="10ms">
                <div class="col-xs-3">
                    <a href="'.$lnk.'" class="about-item ">
                        <img src="'.webPath.$item['img'].'" class="img-responsive" alt="" title=""/>
                    </a>     
                </div>
                <div class="col-xs-7">
                    <a href="'.$lnk.'" class="about-item clearfix">
                        <p class="baithuocquy-title item-title">'.$item['title'].'</p>
                    </a>
                    <div class="baithuocquy-sum">
                        <span>'.nl2br(common::str_cut($item['sum'],620)).'</span>
                    </div>
                </div>
            </div>
            <hr/>';
    }
    function baithuocquy_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('baithuocquy',$page);
        $count=$this->db->totalCount;
        $str.='<div class="baithuocquy-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->baithuocquy_item($item);
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
    function baithuocquy_one($id=1){
        $item=$this->db->where('id',$id)->getOne('baithuocquy');
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

