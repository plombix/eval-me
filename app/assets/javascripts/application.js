//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-wysihtml5
//= require best_in_place
//= require turbolinks
//= require_tree .

$(document).on('page:load', function() {
  window['rangy'].initialized = false
});


$(".best_in_place").best_in_place();
