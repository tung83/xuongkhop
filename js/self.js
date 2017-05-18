function ToogleEnableSubmitButton(){
    var empty = false;
    $('form input,form textarea').each(function() {
        var attr = $(this).attr('required');
        if (typeof attr !== typeof undefined && attr !== false && $(this).val() == '' ) {
            empty = true;
        }
    });

    if (empty) {
        $('.submit-button').addClass('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
    } else {
        $('.submit-button').removeClass('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
    }
}
$(function(){    
    new WOW().init();
    $('form input,form textarea').keyup(function() {
        ToogleEnableSubmitButton();
    });
    $( "#tabs" ).tabs();
    $("body").append('<a href="#" class="scrollTo-top" ><i class="fa fa-angle-double-up"></i></a>');
    var viewPortWidth = $(window).width();
    $(window).scroll(function(event) {
        event.preventDefault();
        if ($(this).scrollTop() > 180) {
            $('.scrollTo-top').fadeIn();
        } else {
            $('.scrollTo-top').fadeOut();
        }
    });    
    $('.scrollTo-top').click(function(event) {
        $('html, body').animate({scrollTop : 0 }, 600);
        event.preventDefault();
    }); 
    
    
    $(".test-popup-link").magnificPopup({
      type: "image",
      zoom: {
        enabled: true,
        duration: 300
      }
    });
    $('.popup-gallery').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
        },
        zoom: {
            enabled: true,
            duration: 300
        },
        image: {
            verticalFit:true
        }
	});   
    $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
      disableOn: 700,
      type: 'iframe',
      mainClass: 'mfp-fade',
      removalDelay: 160,
      preloader: false,
      zoom: {
            enabled: true,
            duration: 300
      },
      fixedContentPos: false
    });      
})
$(function() {    
     $('.slick').slick({
        dots: false,
        autoplay: true,
        autoplaySpeed: 2000,
        infinite: true,
        speed: 150,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 1,
              infinite: true,
              dots: true
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
          // You can unslick at a given breakpoint now by adding:
          // settings: "unslick"
          // instead of a settings object
        ]
      });
    $("#product-page #search, #search-product-page #search").on('submit',function(e){
        e.preventDefault();
        var storey = $('select[name="storey"]').val();
        var min_beds = $('select[name="min_beds"]').val();
        var max_beds = $('select[name="max_beds"]').val();
        var land_width = $('select[name="land-width"]').val();
        var min_price = $('select[name="min-price"]').val();
        var max_price = $('select[name="max-price"]').val();
        var searchLink=$(this).find("#search-link").val();

        $( location ).attr("href",searchLink+'s='+storey+'&mb='+min_beds+'&ab='+max_beds+'&l='+land_width+'&mp='+min_price+'&ap='+max_price);
    });
    $("#sell-page #search, #search-sell-page #search").on('submit',function(e){
        e.preventDefault();
        var storey = $('select[name="storey"]').val();
        var min_beds = $('select[name="min_beds"]').val();
        var max_beds = $('select[name="max_beds"]').val();
        var land_width = $('select[name="land-width"]').val();
        var min_price = $('select[name="min-price"]').val();
        var max_price = $('select[name="max-price"]').val();
        var searchLink=$(this).find("#search-sell-link").val();

        $( location ).attr("href",searchLink+'s='+storey+'&mb='+min_beds+'&ab='+max_beds+'&l='+land_width+'&mp='+min_price+'&ap='+max_price);
    });
    
    $('.pagination>li>a:has(i)').addClass('has_icon');
    
    $('form#subscribe').on('submit', function (e) {
            e.preventDefault();

            var $form = this;
            var email = $form.email.value.trim();
            var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

            if (!email) return alert("Bạn phải nhập email!");
            if (!regex.test(email)) return alert('Email không đúng!');

            $.ajax({
                    type: 'POST',
                    url: "/ajax.php",
                    data: {act: 'subscribe', email: email },
                    success: function() {
                            alert("Cám ơn bạn đã đăng ký nhận tin.");
                            $form.reset();
                    },
                    fail: function() {
                            alert("Có lỗi xảy ra. Bạn vui lòng thử lại lần sau.");
                    }
            })
    })
});

function add_cart(id,qty){
    $.ajax({
        method: "POST",
        url: "/page/cart.php",
        data: { act : 'add' , product_id : id , product_qty : qty }
    }).done(function( msg ) {
        $("#cart-count").html(msg);     
        $("#cart-count").removeClass('hidden');
        alert( "Đã thêm sản phẩm vào giỏ hàng!" );
    });
}




    
$(function() {
    //News Page scroll fixed head top menu
    $(window).bind('scroll', function() {
    var navHeight = 128;

    if($(window).width() >= 992)
    {
        if ( $(window).scrollTop() > navHeight) {
                $('.menu-ground').addClass('fixed');
        }
        else {
                $('.menu-ground').removeClass('fixed');
        }
    }
    });

    $(window).scroll(function(){
            var scrollTop = $(window).scrollTop();
            if(scrollTop > 128 && !$('.news-page #header-bottom').is(":hover"))
                    $('.news-page #header-bottom').stop().animate({'opacity':'0.9'},725);
            else	
                    $('.news-page #header-bottom').stop().animate({'opacity':'1'},725);
    });

    $('.news-page #header-bottom').hover(
            function (e) {
                    var scrollTop = $(window).scrollTop();
                    $('.news-page #header-bottom').stop().animate({'opacity':'1'},725);
            },
            function (e) {
                    var scrollTop = $(window).scrollTop();
                    if(scrollTop > 244){
                            $('.news-page #header-bottom').stop().animate({'opacity':'0.9'},725);
                    }
            }
    );
    $( window ).resize(function() {
        var marginValue=$(window).width()-1200;
        if(marginValue > 0){
            $(".ws-title").css('right',marginValue/2+'px');
            $(".ws_bullets").css('right',marginValue/2+'px');
        }
        var max_sell_height= Math.max($(".ind-sell").height(), $(".ind-buy").height());
        $(".ind-buy").height(max_sell_height);
        $(".ind-sell").height(max_sell_height);
      });
      $(window).trigger('resize');
});



