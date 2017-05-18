<?php

function select_options($db,$name,$field_name, $label,$required=false){
    $list_string=$db->where('active',1)->where('keyName',$name)->getOne('options','list');
    $option_list = explode(',', $list_string['list']);
    $str='
    <div class="form-group">
        <label>'.$label.'</label>
        <select class="form-control form-inline" name="'.$field_name.'" id="'.$field_name.'" >
        <option value="">Any</option>';
    foreach($option_list as $item){
        $str.='<option value="'.$item.'"'.$slt.'>'.$item.'</option>';
    }
    $str.='
        </select>
        <div class="help-block with-errors"></div>
    </div>
    ';
    return $str;
}

function select_options_land_width($db){
    $option_list1 = range(10, 16, 0.5);
    $option_list2 = range(17, 20, 1);
    $option_list3 = range(30, 50, 10);    
    $option_list = array_merge($option_list1,$option_list2,$option_list3);
    $str='
    <div class="form-group">
        <label>Land Width<span>(m)</span></label>
        <select class="form-control form-inline" name="land-width" id="land-width" >
        <option value="">Any</option>';
    foreach($option_list as $item){
        $str.='<option value="'.$item.'"'.$slt.'>'.$item.'</option>';
    }
    $str.='
        </select>
        <div class="help-block with-errors"></div>
    </div>
    ';
    return $str;
}
function select_options_min_price($db){
    $option_list = range(140000, 640000, 20000);
    $str='
    <div class="form-group">
        <label>Min.Price</label>
        <select class="form-control form-inline" name="min-price" id="min-price" >
        <option value="">Any</option>';
    foreach($option_list as $item){
        $str.='<option value="'.$item.'"'.$slt.'>'.number_format($item,0,',','.').'</option>';
    }
    $str.='
        </select>
        <div class="help-block with-errors"></div>
    </div>
    ';
    return $str;
}
function select_options_max_price($db){
    $option_list = range(180000, 700000, 20000);
    $str='
    <div class="form-group">
        <label>Max.Price</label>
        <select class="form-control form-inline" name="max-price" id="max-price" >
        <option value="">Any</option>';
    foreach($option_list as $item){
        $str.='<option value="'.$item.'"'.$slt.'>'.number_format($item,0,',','.').'</option>';
    }
    $str.='
        </select>
        <div class="help-block with-errors"></div>
    </div>
    ';
    return $str;
}
function seach_button(){
    $str='
    <div class="form-group search-button-group">    
        <button type="submit" class="btn btn-primary">
          <i class="fa fa-search" aria-hidden="true"></i> SEARCH
        </button>    
    </div>
    ';
    return $str;
}
?>