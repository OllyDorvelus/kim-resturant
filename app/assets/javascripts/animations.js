$(document).on('turbolinks:load', function() {
  console.log("Hello World")
  
// var target = $(".jumbo1").offset().top;
// var interval = setInterval(function() {
//     if ($(window).scrollTop() >= target) {
//        // alert("made it!");
//       $('nav').css("position", "fixed")
//        // clearInterval(interval);
//     }
//   else {
//     $('nav').css("position", "static")
//   }
// }, 0);
  $('.food-img-container > .description').addClass("hidden")
  $('.food-img-container > .price').addClass("hidden")
  $('.food-menu-img').mouseenter(function(){
    $(this).animate({height: 200, width: 245}, 200)
  }).mouseleave(function(){
    $(this).animate({height: 180, width: 225}, 200)
  })
  
  $('.food-img-container').mouseenter(function(){
   // $(".caption").removeClass("hidden")
    var description = $(this).find(".description")
    var img = $(this).find(".menu-food-img")
    var price = $(this).find(".price")
        img.animate({
        opacity: "0.8"
    }, 200)
     description.removeClass("hidden")
     price.removeClass("hidden")
  }).mouseleave(function(){
    var description = $(this).find(".description")
    var img = $(this).find(".menu-food-img")
    var price = $(this).find(".price")
    img.animate({
        opacity: "1"
    }, 200)
    description.addClass("hidden")
    price.addClass("hidden")
  })
  
});
  