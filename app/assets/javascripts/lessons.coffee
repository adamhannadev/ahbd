# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
 jQuery ->
  $(".dateTime").flatpickr(
   {
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y, h:iK"
    }
   );
 $('select.dropdown')
    .dropdown({
     clearable: true,
     allowAdditions: true});
 $('.menu .item')
  .tab();
 $('.editor').trumbowyg({
 });