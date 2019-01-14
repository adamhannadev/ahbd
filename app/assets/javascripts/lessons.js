// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('turbolinks:load', function () {
  $(".dateTime").flatpickr(
   {
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y, h:iK"
    }
   );
 $('.editor').trumbowyg({
 });
 
 $('.ui.search')
  .search({
    apiSettings: {
      url: '/packages/'
    },
    fields: {
      results : 'packages',
      title   : 'id',
      url     : 'html_url'
    },
    minCharacters : 3
  });
});