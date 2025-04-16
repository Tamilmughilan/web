$('#addBtn').click(function() {
    var task = $('#task').val();
    if (task) {
      $('#tasks').append('<li>' + task + '</li>');
      $('#task').val('');
    }
  });
  