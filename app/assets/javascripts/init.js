App.init = function() {
$('table').tablesort();
}

$(document).on('turbolinks:load', function () {
  App.init();
  eventCalendar();
  initAnimateCss();
  
  $('select.dropdown')
  .dropdown({clearable: true});
  
  
  
});