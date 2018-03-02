(function($){
    'use strict';
    
    jQuery(document).ready(function(){
    
        
   
        
        
    $(".owl-carousel").owlCarousel({
        items:1,
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        dots: false,
        dotsEach:false,
        nav:true,
        navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
    
    });
        
            $('.button_1').magnificPopup({
                items: {
                    src: 'https://www.youtube.com/watch?v=ZDhGaBwRTgg'
                },
                type: 'iframe',
                iframe: {
                    markup: '<div class="mfp-iframe-scaler">' +
                        '<div class="mfp-close"></div>' +
                        '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>' +
                        '</div>',
                    patterns: {
                        youtube: {
                            index: 'youtube.com/',
                            id: 'v=',
                            src: '//www.youtube.com/embed/%id%?autoplay=1'
                        }
                    },
                    srcAction: 'iframe_src',
                }
            });
        
        
        
        $('.counter').counterUp({
            delay: 20,
            time: 3000,
        });
        $('#nav').slicknav();   
    
    });
        

    
})(jQuery);