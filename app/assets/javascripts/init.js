App.init = function() {
$('table').tablesort();
}

$(document).on('turbolinks:load', function () {
  App.init();
  initAnimateCss();
  
  $('select.dropdown')
  .dropdown({clearable: true});
  
  
  
});