//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-wysihtml5
//= require best_in_place
//= require turbolinks
//= require_tree .


$(document).ready(function() {
  $('#quest_edit').each(function(i, elem) {
    $(elem).wysihtml5();
  });
})

$(".best_in_place").best_in_place();
