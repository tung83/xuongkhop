<?php include_once 'function.php';?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content=""/>
    <?=page_header($view,$db)?>  
    <link rel="icon" type="image/png" href="<?=frontPath?>short-letter-logo.png"/>   
    <?=common::basic_css()?> 
    <?=common::basic_js()?>
</head>
<body id="<?=pageId($view)?>">
    <div class="wsmenucontainer clearfix">
        <div class="overlapblackbg"></div>
        <header>
            <?=menu($db,$view)?>         
        </header>  
        <div class="wrapper">
        <section id="page-content">
        <?php

        switch($view){
            case 'build':
                echo product($db);
                break;
            case 'search':
            case 'tim-kiem':
                echo search_product($db);
                break;
            case 'search_sell':
            case 'tim-kiem':
                echo search_sell($db);
                break;
            case 'buy':
                echo buy($db);
                break;
            case 'sell':
                echo sell($db, $view);
                break;        
            case 'concierge':
                echo concierge($db);
                break;
            case 'meet-our-partners':
                echo partner($db);
                break;
            case 'about-us':
                echo about($db);
                break;
            case 'contact-us':
                echo contact($db);
                break;
            default:
                echo home($db);
                break;
        }
        ?>
        
            
        </section>
        <footer>
            <div class="container">
                <div class="row footer-content">
                    <div class="col-md-3 footer-col col-xs-6 footer-menu">
                        <div class="footer-menu-part">
                            <span class="footer-top-span">
                                Menu
                            </span>
                            <div>
                                <?=foot_menu($db,$view)?>
                                
                            </div>     
                        </div>
                    </div>
                    
                    <div class="col-md-3  footer-col col-xs-6">
                        <div class="footer-product-part">
                            <span class="footer-top-span">
                                Điều trị xương khớp
                            </span>
                            <div>
                                <?=foot_product_cate($db,$view)?>   
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-6 footer-col">
                        <div class="footer-contact-part">
                            <span class="footer-top-span">                                
                                <?=social($db)?>
                            </span>    
                            <div>
                                <div>Copyright © 2017. All rights reserved.</div>
                                <div>Designed by <a class="psmedia" href="http://psmedia.vn" target="_blank"><b>PSmedia.vn</b></a></div>
                          
                                <div id="counters">
                                    <?php
                                        $vs=new visitors($db);
                                    ?>
                                    <div>Đang online: <?= $vs->getOnlineVisitors() ?></div> 
                                    <div>Lượt truy cập: <?= $vs->getCounter() ?></div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>  
            </div>    
        </footer>
        </div>
    </div>
</body>
</html>