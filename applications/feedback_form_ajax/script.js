$('#submit').click(function() {
    var name = $('#name').val();
    var feedback = $('#feedback').val();
    if (name && feedback) {
      $('#message').text("Thank you for your feedback, " + name + "!");
    } else {
      $('#message').text("Please fill out all fields.");
    }
  });
  