import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '606fd0c89912a1b2f3c55024c0246096';
const weatherApiUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityData(String cityName) async {
    var data = await NetworkHelper(
            url: '$weatherApiUrl?q=$cityName&appid=$apiKey&units=metric')
        .getData();

    print('$weatherApiUrl?q=$cityName&appid=$apiKey&units=metric');
    return data;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getCurrentLocation();

    var weatherData = await NetworkHelper(
            url:
                '$weatherApiUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric')
        .getData();
    print('4');
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
