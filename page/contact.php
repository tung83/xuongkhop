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
                                $purpose='';
                                if(!empty($_POST['purpose'])) {
                                    foreach($_POST['purpose'] as $key=>$check) {
                                        if($key == 0){
                                            $purpose.= $check; 
                                        }
                                        else{
                                            $purpose.= ', '.$check; 
                                            
                                        }
                                    }
                                }
                                $insert=array(
                                    'name'=>$name,'adds'=>$adds,'phone'=>$phone,
                                    'email'=>$email,'subject'=>$subject,'content'=>$content, 'purpose'=>$purpose,
                                    'dates'=>date("Y-m-d H:i:s")
                                );
                                try{
                                    $this->send_mail($insert);
                                    $this->db->insert('contact',$insert);                
                                     if(!$this->post_result){
                                    $this->post_result = ' <div class="alert alert-success"><i class="icon fa fa-check"></i>
                                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                             <strong>Success!</strong>  Your information was submitted successfully. We will contact you soon!
                                           </div>';
                                }
                                        
                                }catch(Exception $e){
                                     $this->post_result .= ' <div class="alert alert-warning">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Error!</strong> '. $e->getMessage() .
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
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <section id="contact-page">
            <div class="container">
                <div class="row contact-box">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="title-head">
                                <span>'
                                    .$this->title.' 
                                </span>                                
                                <p>
                                    <i>Thank you for visiting our website. For more information, Please contact:</i>
                                </p>   
                            </div>
                        </div> 
                    </div> 
                    <div class="row contact-wrap">'; 
                        if($this->post_result != '')
                         {
                             $str.= $this->post_result;
                         }                             
        $str.=              '<div class="col-md-4 contact-left">
                             
                            <p class="thanks-text">
                                '.common::qtext($this->db,3).'
                            </p>     
                            <p>
                                <img src="'.frontPath.'contact.jpg" class="img-responsive map-image" alt="" title=""/>
                            </p>     
                        </div>
                        <div class="col-md-7 col-md-offset-1 "> 
                            <h3 class="contact-right-header">
                                How can we assist you?
                            </h3>
                            <form data-toggle="validator" role="form" class="contact-form" name="contact-form" method="post" action="">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" required placeholder="Name *" />
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" class="form-control" required placeholder="Phone *">
                                </div>   
                                <div class="form-group">
                                    <input type="text" name="adds" class="form-control" placeholder="Fax">
                                </div>  
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="Company"/>
                                    <div class="help-block with-errors"></div>
                                </div>   
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" required placeholder="Email *" />
                                    <div class="help-block with-errors"></div>
                                </div> 
                                <div class="form-group">
                                <table class="purpose-check">
                                    <tr>
                                    <td>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="purpose[]" value="custom homes" class=""/>Custom Homes
                                        </label>
                                    </td>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="buy home" class=""/>Buy Home (advocacy)
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="build new home" class=""/>Build New Home
                                    </label>
                                    </td>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="house" class=""/>House
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="sell home" class=""/>Sell Home
                                    </label>
                                    </td>
                                    </tr>
                                   </table>
                                    <div class="help-block with-errors"></div>
                                </div>   
                                <div class="form-group">
                                    <textarea name="content" id="content" required class="form-control"  placeholder="Message *" rows="8"></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="contact_send" class="btn btn-primary btn-md btn-custom submit-button">
                                        SEND
                                    </button>
                                    <button type="reset" name="reset" class="btn btn-primary btn-md btn-custom">
                                        CLEAR
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
        $mail->Subject =  'Customer contacted from website';        
        
        $mail->Body = '
        <html>
        <head>
        	<title>'.$mail->Subject.'</title>
        </head>
        <body>
        	<p>Full Name: '.$item['name'].'</p>
        	
        	<p>Fax: '.$item['adds'].'</p>
        	<p>Phone: '.$item['phone'].'</p>
                <p>Company: '.$item['subject'].'</p>        	
        	<p>Email: '.$item['email'].'</p>
                <p>For: '.$item['purpose'].'</p>
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
