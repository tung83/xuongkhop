<?php
class tuvan extends base{
    function __construct($db){
        parent::__construct($db,7,'tuvan');
    }
    function ind_tuvan(){
        $this->db->reset();
        $this->db->where('active',1)->where('home',1);
        $this->db_orderBy();
        $list=$this->db->get('tuvan',5);
        $str='
        <div class="ind-tuvan">  
                <div class="row">    
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>'
                                .$this->title.' 
                            </span>
                        </div>
                    </div>';
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $str.='
                    <div class="col-xs-12 tuvan-col wow fadeIn animated" data-wow-duration="100ms">
                        <div class="tuvan-item">                          
                            <a href="'.$lnk.'">
                                <p class="tuvan-item-title"><img src="/file/front/question.png"></img>'.$item['title'].'</p>
                            </a>
                        </div>
                    </div>';   
        }
        $str.='
                    <div class="clearfix"></div>
                    </div>
            </div>';
        return $str;
    }
    function tuvan_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        return '
            <div class="row tuvan-item wow fadeInLeft animated" data-wow-duration="1000ms" data-wow-delay="10ms">
                <img class="question-mark" src="/file/front/question.png"></img>
                <div class="tuvan-line">
                    <a href="'.$lnk.'" class="about-item clearfix">
                        <p class="tuvan-title">'.$item['title'].'</p>
                    </a>
                    <div class="tuvan-sum">
                        <span>'.$item['sum'].'</span>
                    </div>
                </div>
            </div>';
    }
    function tuvan_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('tuvan',$page);
        $count=$this->db->totalCount;
        $str.='<div class="col-xs-12"><div class="tuvan-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->tuvan_item($item);
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
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function tuvan_one($id=1){
        $item=$this->db->where('id',$id)->getOne('tuvan');
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

