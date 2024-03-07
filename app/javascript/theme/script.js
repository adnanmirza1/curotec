/* Mega Menu JS */
jQuery( document ).ready(function($) {
	$( window ).on("load", function() {
	   	$('li.mega-menu-item').on('open_panel', function() {
	        var topLi = $('#mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-toggle-on');
	        var submenuLi = $('#mega-menu-wrap-primary #mega-menu-primary li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column > ul.mega-sub-menu > li.mega-menu-item');
	        var topLiOffset = topLi.offset();
	        
	        submenuLi.width( $('body').width() - topLiOffset.left);
	        submenuLi.css('left',topLiOffset.left - 5 );
	        $('header').addClass('curotec-mega-toggle-on');
	    });
	    $('li.mega-menu-item').on('close_panel', function() {
	        $('header').removeClass('curotec-mega-toggle-on');
	    });
	});
});
