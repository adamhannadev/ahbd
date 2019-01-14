App.init = function() {

}

$(document).on('turbolinks:load', function () {
  App.init();
  eventCalendar();
  initAnimateCss();
  
  $('select.dropdown')
  .dropdown({clearable: true})
;
});