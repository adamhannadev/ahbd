$(document).on('turbolinks:load', function () {

$('.mobile-menu-toggle').on('click', function(e) {
    e.preventDefault()
    e.stopPropagation()
    $('.mobile-menu').show().ani('slideInRight')
});


$('body').on('click', function(){
  if ( $('.mobile-menu').is(":visible") ) {
    $('.mobile-menu').ani('fadeOut', function(){
        $('.mobile-menu').hide()
    })
  } 
});

$('.mobile-menu-item').on('click', function(){
  $('.mobile-menu').addClass('animated fadeOut')
}); 

  if ( $('.alert').is(":visible") ) {
    $('.alert').ani('fadeOut delay-3s', function(){
        $('.alert').hide()
    })
  } 
  
}); 
