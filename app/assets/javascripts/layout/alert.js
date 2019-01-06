$(document).on('turbolinks:load', function () {

   if ( $('.alert').is(":visible") ) {
    $('.alert').ani('fadeOut delay-3s', function(){
        $('.alert').hide()
    })
  } 
  
});