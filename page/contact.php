<?php
class contact extends base{
    private $post_result;
    function __construct($db){
        parent::__construct($db,8,'contact');
    }
    function contact_insert(){
        $this->db->reset();
        if(isset($_POST['contact_send'])){
            $name=htmlspecialchars($_POST['name']);
            $adds=htmlspecialchars($_POST['adds']);
            $phone=htmlspecialchars($_POST['phone']);
            $email=htmlspecialchars($_POST['email']);
            $subject=htmlspecialchars($_POST['subject']);
            $content=htmlspecialchars($_POST['content']);
            $insert=array(
                'name'=>$name,'adds'=>$adds,'phone'=>$phone,
                'email'=>$email,'subject'=>$subject,'content'=>$content,
                'dates'=>date("Y-m-d H:i:s")
            );
            try{
                $this->send_mail($insert);
                $this->db->insert('contact',$insert);                
                 if(!$this->post_result){
                $this->post_result = ' <div class="alert alert-success"><i class="icon fa fa-check"></i>
                         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                         <strong>Thành công!</strong>  Thông tin của Quý Khách đã gửi thành công. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất!.
                       </div>';
            }

            }catch(Exception $e){
                 $this->post_result .= ' <div class="alert alert-warning">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Lỗi!</strong> '. $e->getMessage() .
                  '</div>'; 
            }    
        }
    }
    function contact(){
        $basic_config=$this->db->getOne('basic_config');
        $this->contact_insert();
        $this->db->reset();
        $item=$this->db->where('id',3)->getOne('qtext','content');
         
        $str.='    
        <section id="contact-page">        
            <div class="contact-container">
            <div class="container">
            <div class="row">
                <img src="/file/front/contact-banner.png" class="img-responsive">
            </div></div></div>
            <div class="container">
                <div class="row contact-box">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="title-head underline-header">
                                <span>'
                                    .$this->title.' 
                                </span>                                
                                <p>
                                    <i>Cảm ơn Quý khách đã truy cập vào website. Mọi thông tin chi tiết xin vui lòng liên hệ:</i>
                                </p>   
                            </div>
                        </div> 
                    </div> 
                    <div class="row contact-wrap">'; 
                        if($this->post_result != '')
                         {
                             $str.= $this->post_result;
                         }                             
        $str.=              '<div class="col-sm-6">
                             
                            <p>
                                '.common::qtext($this->db,3).'
                            </p>      
                            <p>
                                <img src="'.frontPath.'contact.png" class="img-responsive" alt="" title=""/>
                            </p>    
                        </div>
                        <div class="col-sm-6"> 
                            <p class="text-center">
                                Chú ý: Dấu (*) các trường bắt buộc phải nhập vào. Quý vị có thể gõ chữ tiếng Việt không dấu hoặc chữ tiếng Việt có dấu theo chuẩn UNICODE (UTF-8).
                            </p>
                            <form data-toggle="validator" role="form" class="contact-form" name="contact-form" method="post" action="">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" required placeholder="Họ Tên*" />
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" required placeholder="Email*" />
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" class="form-control" required placeholder="Điện Thoại*">
                                </div>   
                                <div class="form-group">
                                    <input type="text" name="adds" class="form-control" required placeholder="Địa Chỉ*">
                                </div>      
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" required placeholder="Chủ Đề*"/>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <textarea name="content" id="content" required class="form-control"  placeholder="Nội Dung Tin Nhắn*" rows="8"></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="contact_send" class="btn btn-primary btn-md btn-custom submit-button">
                                        Gửi Tin
                                    </button>
                                    <button type="reset" name="reset" class="btn btn-primary btn-md btn-custom">
                                        Xóa
                                    </button>
                                </div>
                            </form> 
                        </div>
                    </div><!--/.row-->   
                </div><!--/.row contact-box--> 
            </div><!--/.container-->
             <div id="google-map"> </div>
        </section><!--/#contact-page-->';
        return $str;
    }
    function send_mail($item){
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
        $mail->Host = $basic_config['smtp_server'];
        $mail->Port = $basic_config['smtp_port']; // or 587
        $mail->IsHTML(true);
        $mail->Username = $basic_config['smtp_user'];
        $mail->Password = $basic_config['smtp_pwd'];
        $mail->SetFrom($basic_config['smtp_user'], $basic_config['smtp_sender_name']);
        $mail->AddAddress($basic_config['smtp_receiver']);
        $mail->SMTPAutoTLS = false;
        $mail->CharSet = 'UTF-8';
        $mail->Subject =  'Khách hàng liên hệ gửi từ website';        
        
        $mail->Body = '
        <html>
        <head>
        	<title>'.$mail->Subject.'</title>
        </head>
        <body>
        	<p>Full Name: '.$item['name'].'</p>
        	
        	<p>Address: '.$item['adds'].'</p>
        	<p>Phone: '.$item['phone'].'</p>
        	
        	<p>Email: '.$item['email'].'</p>
                <p>Tiêu Đề: '.$item['subject'].'</p>
        	<p>Content: '.nl2br($item['content']).'</p>
        </body>
        </html>';
        if (!$mail->send()) {
             $this->post_result = ' <div class="alert alert-warning">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Lỗi!</strong> Mailer Error:' . $mail->ErrorInfo.
                      '</div>'; 
        }
    }
}
?>
