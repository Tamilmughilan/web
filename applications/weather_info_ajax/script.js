$('#getWeather').click(function() {
    var city = $('#city').val();
    var fakeData = {
      "Delhi": "Sunny 30°C",
      "Mumbai": "Rainy 26°C",
      "Chennai": "Cloudy 28°C"
    };
    $('#weatherResult').text(fakeData[city] || "No data available");
  });
  