var apiCall = 'http://api.openweathermap.org/data/2.5/weather?zip=24060&units=imperial&appid=8cb415a7792e91bbbbf8d28574cfbdab';

$.getJSON(apiCall, weatherCallback);

function weatherCallback(weatherData)
{
  
    console.log(weatherData);
  
}



