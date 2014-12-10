$(document).ready(function() {

  $('.fb-icon').on('mouseover', function(){
    $(this).attr("src", "/static/img/facebook-hover.png")
  });

  $('.fb-icon').on('mouseout', function(){
    $(this).attr("src", "/static/img/facebook.png")
  });

  $('.twitter-icon').on('mouseover', function(){
    $(this).attr("src", "/static/img/twitter-hover.png")
  });

  $('.twitter-icon').on('mouseout', function(){
    $(this).attr("src", "/static/img/twitter.png")
  });

});