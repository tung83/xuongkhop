<?php
class cart_show extends base{
    private $cart;
    function __construct($db){        
        parent::__construct($db,8,'cart');
        $this->cart=$_SESSION['cart'];
    }
    function breadcrumb(){
        
    }
    
    function cart_checkout(){
        $this->db->reset();
        if(isset($_POST['contact_send'])){
            $name=htmlspecialchars($_POST['name']);
            $adds=htmlspecialchars($_POST['adds']);
            $phone=htmlspecialchars($_POST['phone']);
            $content=htmlspecialchars($_POST['content']);
            $insert=array(
                'name'=>$name,'adds'=>$adds,'phone'=>$phone,
                'notice'=>$content,
                'dates'=>date("Y-m-d H:i:s")
            );
            $cutomerInfo = $insert;
            $itemList=array();
            try{
                //$this->send_mail($insert);
                $recent=$this->db->insert('cart',$insert); 
                foreach($this->cart as $val){
                    $item=$this->db->where('id',$val['id'])->getOne('product','id,title,price,price_reduce');
                    $price=($item['price_reduce']>0)?$item['price_reduce']:$item['price'];
                    $price= isset($price)? $price: 0;
                    $insert=array(
                        'cart_id'=>$recent,'product_id'=>$item['id'],'product_title'=>$item['title'],
                        'product_price'=>$price,
                        'product_qty'=>$val['qty']
                    );
                    array_push($itemList, $insert);
                    $this->db->insert('cart_detail',$insert);    
                    $_SESSION['cart']=NULL;            
                }
                $this->send_mail($cutomerInfo, $itemList);
                echo '
                    <script>
                        alert("Thông tin của bạn đã được gửi đi, Chúng tôi sẽ liên lạc với bạn sớm nhất có thể, Xin cám ơn!");
                        $(function(){
                            $("#cart-count").addClass("hidden");
                        });
                    </script>';
            }catch(Exception $e){
                echo $e->getErrorMessage;
            }
        }
        $str='
        <div class="col-md-6 clearfix">
            <p><i>Vui lòng điền thông tin giao hàng: </i></p>
            <form role="form" data-toggle="validator" method="post">
                <div class="form-group">
                    <input type="text" name="name" placeholder="Họ tên..." class="form-control" data-error="Vui lòng nhập họ tên" required/>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <input type="text" name="adds" placeholder="Địa chỉ..." class="form-control" data-error="Vui lòng nhập địa chỉ của bạn" required/>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <input type="text" name="phone" placeholder="Điện thoại..." class="form-control" data-error="Vui lòng nhập số phone của bạn" required/>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <textarea name="content" placeholder="Ghi chú..." class="form-control" rows="3" data-error="Vui lòng nhập nội dung" required></textarea>
                    <div class="help-block with-errors"></div>
                </div>
                <button type="submit" name="contact_send" class="btn btn-default">Gửi</button> 
                <button type="reset" class="btn btn-default">Xoá</button>
            </form>
        </div>';
        return $str;
    }
    function cart_output($db){
        if(cart_update_multi($db)){
            $this->cart=$_SESSION['cart'];            
        }
        
        $str.=' 
        <div class="col-xs-12">
            <div class="title-head">
                <span>
                    GIỎ HÀNG CỦA BẠN
                </span>
            </div>
        </div>
        <form action="" method="post" id="post-cart">';
        $str.='
        <section id="cart_items">
			<div class="table-responsive cart_info">
				<table class="table table-condensed table-hover">					
                                        <thead class="thead-default">
						<tr class="cart_menu">
							<th class="image">Hình Ảnh</th>
							<th class="description">Tên SP</th>
							<th >Đơn Giá(VNĐ)</th>
							<th class="quantity">Số lượng</th>
							<th class="total">Thành Tiền(VNĐ)</th>
							<th class="action-clear">Xóa</th>
						</tr>
					</thead>
					<tbody>';
     $set=0;
     $isSetContact = false;
     foreach($this->cart as $key=>$val){
        $item=$this->db->where('id',$val['id'])->getOne('product','id,title,price,price_reduce');
        common::load('product','page');
        $pd=new product($this->db);
        $img=$pd->first_image($val['id']);
        $lnk=myWeb.$this->lang.'/'.product_view.'/'.common::slug($item['title']).'-i'.$item['id'];
        $price=($item['price_reduce']>0&&$item['price_reduce']<$item['price'])?$item['price_reduce']:$item['price'];
        $priceString = ($price == 0) ? 'Liên hệ' : number_format($price,0,',','.').'&nbsp;₫';
        $total=$price*$val['qty'];
        $totaltring = ($total == 0) ? 'Liên hệ' : number_format($total,0,',','.').'&nbsp;₫';
        if($total==0){
            $isSetContact = true;
        }
        $set+=$total;
        $str.='
        <tr>
			<td class="cart_product">
				<a href="'.$lnk.'"><img src="'.webPath.$img.'" class="img-responsive" style="max-width:50px" alt="" title=""/></a>
			</td>
			<td class="cart_description">
				<a href="'.$lnk.'">'.$item['title'].'</a>
			</td>
			<td class="cart_price">
				<p>'.$priceString.'</p>
			</td>
			<td class="cart_quantity">
                            <div class="number-spinner-container">
                                <div class="input-group number-spinner ">
                                        <span class="input-group-btn">
                                                <button type="button" class="btn btn-default" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></button>
                                        </span>
                                        <input type="text" name="productItems['.$key.'][qty]" id="amount" class="form-control text-center" value="'.$val['qty'].'">
                                        <span class="input-group-btn">
                                                <button type="button" class="btn btn-default" data-dir="up"><span class="glyphicon glyphicon-plus"></span></button>
                                        </span>
                                </div>
                            </div>
				
			</td>
			<td class="cart_price">
				<p>'.$totaltring.'</p>
			</td>
			<td class="action-clear">
				<a href="javaScript:removeItem('.$key.');" ><i class="fa fa-trash-o"></i></a>
			</td>
                        <input type="hidden"  name="productItems['.$key.'][id]" value="'.$val['id'].'" />
		</tr>';
     }
        $setString = ($set == 0) ? 'Liên hệ' : number_format($set,0,',','.').'&nbsp;₫';     
     $str.='
					</tbody>
				</table>
			</div>    	
    	</section> <!--/#cart_items-->
    
    	<section id="do_action">			
			<div class="row ">
				<div class="col-sm-12">
                                <div class="total_area clearfix">
					<p class="pull-right">                                        
                                        <b>Tổng cộng: <span id="span-price">'.$setString.'</span></b>
                                        </p>
                                </div>
                        <div class="choose_area">						
    						<a class="btn btn-default btn-product pull-left" href="'.myWeb.'">Tiếp tục mua sắm</a>
                            <button type="submit"  class="btn btn-default btn-product">Cập nhật</button>
							<a class="btn btn-default btn-product" href="'.myWeb.'thanh-toan/giao-hang">Gửi đơn hàng</a>
    					</div>							
					</div>
				</div>
			</div>
    	</section><!--/#do_action-->
        </form>';
        $str.='    
        
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
            function removeItem(key){
                var nameV = "productItems["+key+"][qty]"; 
                $("input[name=\'"+nameV+"\'").val(0);
                $("#post-cart")[0].submit();
            }
        
        $("#post-cart").submit(function( event ) {
            $("#post-cart")[0].submit();
            event.preventDefault();
          });      
        </script>';
        return $str;
    }
    
    function send_mail($cutomerInfo, $itemList){
        $basic_config=$this->db->getOne('basic_config');      
      
        //Create a new PHPMailer instance
        include_once phpLib.'PHPMailer/PHPMailerAutoload.php';
        $mail = new PHPMailer(); // create a new object
        $mail->IsSMTP(); // enable SMTP
        $mail->SMTPSecure = 'tls'; // secure transfer enabled REQUIRED for Gmail        
        //Whether to use SMTP authentication
        //$mail->SMTPDebug = 3;
        //Ask for HTML-friendly debug output
        //$mail->Debugoutput = 'html';
        $mail->SMTPAuth = true;
        $mail->Host = $basic_config['smtp_server']; //smtp.gmail.com
        $mail->Port = $basic_config['smtp_port']; // or 587
        $mail->IsHTML(true);
        //quantrimang.psmedia@gmail.com psmediaquantrimang
        $mail->Username = $basic_config['smtp_user'];
        $mail->Password = $basic_config['smtp_pwd'];
        $mail->SetFrom($basic_config['smtp_user'], $basic_config['smtp_sender_name']);
        $mail->AddAddress($basic_config['smtp_receiver']);
        $mail->SMTPAutoTLS = false;
        $mail->CharSet = 'UTF-8';
        $mail->Subject =  'Khách hàng đặt hàng từ website';        
        
        $strBody = '
        <html>
        <head>
        	<title>'.$mail->Subject.'</title>
                <style>
                    table {
                        font-family: arial, sans-serif;
                        border-collapse: collapse;
                        width: 100%;
                    }

                    td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }

                    tr:nth-child(even) {
                        background-color: #dddddd;
                    }
                </style>
        </head>
        <body>
        	<p>Full Name: '.$cutomerInfo['name'].'</p>
        	
        	<p>Address: '.$cutomerInfo['adds'].'</p>
        	<p>Phone: '.$cutomerInfo['phone'].'</p>
        	
        	<p>Notes: '.nl2br($cutomerInfo['notice']).'</p>
        	<p>Ngày giờ: '.date("Y-m-d H:i:s").'</p>';
        $strBody.='
                <table>
                    <tr>
                      <th>Tên Sản phẩm</th>
                      <th>Đơn giá</th>
                      <th>Số lượng</th>
                      <th>Thành tiền</th>
                    </tr>';
        $set=0;
        $isSetContact = false;
        foreach($itemList as $key=>$cartItem){
            $total = $cartItem['product_price']*$cartItem['product_qty'];
            if($total==0){
                $isSetContact = true;
            }
            $set+=$total;
            $totaltring = ($total == 0) ? 'Liên hệ' : number_format($total,0,',','.').'&nbsp;₫';
            $strBody.='
                <tr>
                  <td>'.$cartItem['product_title'].'</td>
                  <td>'.number_format($cartItem['product_price'],0,',','.').'&nbsp;₫'.'</td>
                  <td>'.$cartItem['product_qty'].'</td>
                  <td>'.$totaltring.'</td>
                </tr>';
        }
        $setString = ($set == 0) ? 'Liên hệ' : number_format($set,0,',','.').'&nbsp;₫';   
        $strBody.='</table>
                <p class="pull-right">                                        
                    <b>Tổng cộng: <span id="span-price">'.$setString.'</span></b>
                </p>
            </body>
        </html>';
        $mail->Body = $strBody;
        if (!$mail->send()) {
             $this->post_result = ' <div class="alert alert-warning">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Lỗi!</strong> Mailer Error:' . $mail->ErrorInfo.
                      '</div>'; 
        }
    }
}