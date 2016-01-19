// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


//this is to make the flash messaging fade in and out
$(function(){
  if ($(".flashMessage") != "") {
    $(".flashMessage").fadeIn(200);
    $(".flashMessage").delay(3000);
    $(".flashMessage").fadeOut(200);
  };
});

// this is the animation slider for the homepage with login fields
$(document).on("page:update", function(){
    $(".left_home").hover(function(){
      $(this).find(".salesin").delay(1200).fadeIn(800);
      $('.logo_home').delay(700).animate({left: '14.5%'}, 400);
    },function(){
      $(this).find(".salesin").fadeOut(200);
      $('.logo_home').animate({left: '39.5%'}, 300);
      });        
    $(".right_home").hover(function(){
      $(this).find(".portin").delay(1200).fadeIn(800);
      $('.logo_home').delay(700).animate({left: '64.7%'}, 400);
    },function(){
      $(this).find(".portin").fadeOut(200);
      $('.logo_home').animate({left: '39.5%'}, 300);
      });        
});

// this is the slideshow for the create boat page
function slideSwitch() {
        var $active = $('div.bo_slide IMG.bo_slide_active');
        var $next = $active.next();    
        $next.addClass('bo_slide_active').fadeIn(200);
        $active.removeClass('bo_slide_active').fadeIn(200);
    }
    $(function() {
        setInterval( "slideSwitch()", 3000 ).fadeIn(200);
});


