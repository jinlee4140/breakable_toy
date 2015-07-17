	// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .



// $(function(){ $(document).foundation(); });

// $(document).ready(function() {
//     $('h1').click(function() {
//         $('h3').fadeOut('slow');
//     });
// });

// $(document).ready(function() {
//     $('h3').fadeIn('slow')
// });



// $(document).ready(function() {
// $('h1, h3').fadeTo('slow', 0);

// });


// $(document).ready(function() {
//     $('h3').mouseenter(function() {
//         $('h3').hide();
//     });
// });

// $(document).ready(function(){
// $('h3').mouseenter(function(){
// $('h3').hide();
// }); });
$(function(){ $(document).foundation(); });

src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"

$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
    });
});

$(document).ready(function(){
  $("#backpack_button").click(function(){
    $("#backpack").show();
    $("#tent").hide();
    $("#sleepingbag").hide();
  });
  $("#tent_button").click(function(){
    $("#backpack").hide();
    $("#tent").show();
    $("#sleepingbag").hide();;
  });
  $("#sleepingbag_button").click(function(){
    $("#backpack").hide();
    $("#tent").hide();
    $("#sleepingbag").show();;
  });
});