# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
 jQuery ->
  $("#dateTime").flatpickr(
   {
    enableTime: false,
    altInput: true,
    altFormat: "F j, Y"
    }
   );
 $('select.dropdown')
 .dropdown();
 $('.ui.radio.checkbox')
 .checkbox();