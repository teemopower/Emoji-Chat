$(document).on('turbolinks:load', function(){
  $('.chatbox').animate({ 
    scrollTop: $(".chatbox").prop("scrollHeight")}, 0
  );
});
