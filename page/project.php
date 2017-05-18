<?php
class project extends base{
    function __construct($db){
        parent::__construct($db,11,'project');
    }
    function ind_project(){
        $str.='
        <section class="ind-project"> 
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
        $list=$this->db->get('project');   
        foreach($list as $item){
            $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
            $img=webPath.$item['img'];
            $str.='
            <div class="col-md-3 col-sm-4 project-col wow fadeInLeft animated" data-wow-duration="2s">
                <figure class="project-item item">
                       <img src="'.$img.'" class="img-responsive center-block"/>
                   
                    <figcaption>
                        <p class="item-title text-center">'.$item['title'].'</p>
                        <a href="'.$lnk.'">View more</a>                     
                    </figcaption>			
                </figure>
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
    function project_item($item){
        $lnk=myWeb.$this->view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $img=webPath.$item['img'];
        return '
              <div class="col-md-3 col-sm-4 project-col wow fadeInLeft animated" data-wow-duration="2s">
                <figure class="project-item item">
                       <img src="'.$img.'" class="img-responsive center-block"/>
                   
                    <figcaption>
                        <p class="item-title text-center">'.$item['title'].'</p>
                        <a href="'.$lnk.'">View more</a>                     
                    </figcaption>			
                </figure>
            </div>';
    }
    function project_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('project',$page);
        $count=$this->db->totalCount;
        $str.='<div class="project-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->project_item($item);
            }
        }        
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function project_one($id=1){
        $item=$this->db->where('id',$id)->getOne('project');
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

