$(document).on('turbolinks:load', function() {
  console.log("Hello World")
  
var target = $(".jumbo1").offset().top;
var interval = setInterval(function() {
    if ($(window).scrollTop() >= target) {
       // alert("made it!");
      $('nav').css("position", "fixed")
       // clearInterval(interval);
    }
  else {
    $('nav').css("position", "static")
  }
}, 0);
});