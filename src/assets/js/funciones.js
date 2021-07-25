(function($){
    "use strict";
    
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('.navbar-default').addClass('sticky');
        } else {
            $('.navbar-default').removeClass('sticky');
        }
        //var scrolled = $(window).scrollTop();
    });
    
    //Oculta el menu cuando se hace pierde el foco
    $(document).click(function(event) {
        $('.navbar-collapse').collapse('hide');
    });
    
})(jQuery);