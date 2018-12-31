App.init = function() {
  // here goes Semantic UI component initialisation
  // i.e.
  $('.ui.menu .ui.dropdown').dropdown({
    on: 'hover'
  });
  $('.ui.menu a.item')
  .on('click', function() {
    $(this)
    .addClass('active')
    .siblings()
    .removeClass('active');
  });
};

$(document).on('turbolinks:load', function () {
  App.init();
});