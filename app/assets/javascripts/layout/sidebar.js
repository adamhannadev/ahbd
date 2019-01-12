$(document).on('turbolinks:load', function() {
    $("#menu").click(function() {
        $('.ui.sidebar')
            .sidebar('toggle');
    });
});
