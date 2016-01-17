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

// var cancel = false;
// $(".salesin").hide();
// $(".right_home").hover(function(){

// cancel = (cancel)?false: true;    
// //alert('test');
// if(!cancel){
// $(".salesin").hide();
// }
// else if(cancel){
// $(".salesin").show();
// }
    

// });

// var w = $(window).width(), h = $(window).height()  
//         $('#video-block video').css({height: ''+h+'',width: ''+w+''})
//         $(window).resize(function(){
//         var w = $(window).width(), h = $(window).height()  
//         $('#video-block video').css({height: ''+h+'',width: ''+w+''})
//         })



 // $('.left_home').hover(
 //        function () {
 //            $(".salesin").fadeIn();
 //        },
 //        function () {
 //            $(".salesin").fadeOut();
 //        }
 //    );

$(function(){
    $(".left_home").hover(function(){
      $(this).find(".salesin").delay(1200).fadeIn(800);
      $('.logo_home').delay(700).animate({left: '14.5%'}, 400);
    }
    ,function(){
    $(this).find(".salesin").fadeOut(200);
    $('.logo_home').animate({left: '39.5%'}, 300);
    }
    );        
});
$(function(){
    $(".right_home").hover(function(){
      $(this).find(".portin").delay(1200).fadeIn(800);
      $('.logo_home').delay(700).animate({left: '64.7%'}, 400);
    }
    ,function(){
    $(this).find(".portin").fadeOut(200);
    $('.logo_home').animate({left: '39.5%'}, 300);
    }
    );        
});



