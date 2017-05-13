(function ($) {
"use strict";
/*--
	Preloader
-----------------------------------*/
var win = $(window);
win.on('load', function() {
	$('.preloader').fadeOut('slow');;
});
/*--
	Menu Sticky
-----------------------------------*/
var sticky = $('.header-area');
win.on('scroll', function() {
	var scroll = win.scrollTop();
	if (scroll < 400) {
		sticky.removeClass('stick');
	}else{
		sticky.addClass('stick');
	}
});
/*--
	Menu Open & Close
-----------------------------------*/
var menuOpen = $('.menu-open');
var menuClose = $('.menu-close');
var menuArea = $('#menu-area');
var menuItem = $('.main-menu nav ul li a');
menuArea.addClass('animated fadeOutLeft');
menuOpen.on('click', function(){
    menuArea.removeClass('fadeOutLeft').addClass('fadeInLeft in');
})
menuClose.on('click', function(){
    menuArea.addClass('fadeOutLeft').removeClass('fadeInLeft in');
})
menuItem.on('click', function(){
    menuArea.addClass('fadeOutLeft').removeClass('fadeInLeft in');
})
/*--
	One Page Menu
-----------------------------------*/
var TopOffsetId = sticky.height() - -10;
$('.main-menu nav').onePageNav({
	currentClass: 'active',
	scrollThreshold: 0.2,
	scrollSpeed: 1000,
	scrollOffset: TopOffsetId,
});
/*--
	Testimonial Slider
-----------------------------------*/
$('.testimonial-slider').slick({
    arrows: false,
    autoplay: false,
    dots: true,
    fade: true,
    infinite: true,
    slidesToShow: 1,
});
/*--
	Isotop with ImagesLoaded
-----------------------------------*/
var worksFilter = $('.works-filter');
var worksGrid = $('.works-grid');
/*-- Images Loaded --*/
worksGrid.imagesLoaded( function() {
    /*-- Filter List --*/
    worksFilter.on( 'click', 'button', function() {
        worksFilter.find('button').removeClass('active');
        $(this).addClass('active');
        var filterValue = $(this).attr('data-filter');
        worksGrid.isotope({ filter: filterValue });
    });
    /*-- Filter Grid --*/
    worksGrid.isotope({
      itemSelector: '.works-item',
      masonry: {
        columnWidth: '.works-item',
      }
    });
});
/*--
	Magnific Popup
-----------------------------------*/
/*-- Video --*/
var videoPopup = $('.video-popup');
videoPopup.magnificPopup({
	type: 'iframe',
	mainClass: 'mfp-fade',
	removalDelay: 160,
	preloader: false,
	zoom: {
		enabled: true,
	}
});
/*-- Image --*/
var imagePopup = $('.image-popup');
imagePopup.magnificPopup({
	type: 'image',
});
/*-- Gallery --*/
var galleryPopup = $('.gallery-popup');
galleryPopup.magnificPopup({
	type: 'image',
	gallery:{
		enabled:true
	}	
});
/*-- Gallery Video --*/
var videGalleryPopup = $('.video-gallery-popup');
videGalleryPopup.magnificPopup({
	type: 'iframe',
	mainClass: 'mfp-fade',
	removalDelay: 160,
	preloader: false,
	zoom: {
		enabled: true,
	},
	gallery:{
		enabled:true
	}	
});
/*--
	Smooth Scroll
-----------------------------------*/
$('[data-scroll]').on('click', function(e) {
	e.preventDefault();
	var link = this;
	$.smoothScroll({
        speed: 1000,
        scrollTarget: link.hash,
        offset: -90,
	});
});
/*--
	Scroll Up
-----------------------------------*/
$.scrollUp({
	easingType: 'linear',
	scrollSpeed: 900,
	animation: 'fade',
	scrollText: '<i class="arrow_carrot-up"></i>',
});
 

})(jQuery);	