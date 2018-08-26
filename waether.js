var apiCAll = 'http://api.openweathermap.org/data/2.5/weather?zip={zip code},{country code}&appid=8cb415a7792e91bbbbf8d28574cfbdab';

$.getJSON(apiCAll, weatherCall);

function weatherCAll(weatherData)
{
    console.log(weatherData)

}



