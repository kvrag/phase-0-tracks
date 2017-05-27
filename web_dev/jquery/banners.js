$(document).ready(function() {

  $(".skills").hide();
  $(".skills").fadeIn(600);

  $(".experience").hide();
  $(".experience").fadeIn(1200);

  $(".education").hide();
  $(".education").fadeIn(1800);

  $(".hidden").hide(); 

    $("#first").click(function() {
      $("#1").toggle();
    });
    $("#second").click(function() {
      $("#2").toggle();
    });
    $("#third").click(function() {
      $("#3").toggle();
    });

});