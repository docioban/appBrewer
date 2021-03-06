import '../utilities/constants.dart';
import 'location.dart';
import 'networking.dart';

class WeatherModel {
  Future<dynamic> getCityData(String cityName) async {
    NetworkingHelp networkingHelp = NetworkingHelp(
        url:
            'http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$id&units=metric');
    var data = networkingHelp.getData();
    return (data);
  }

  Future<dynamic> getCurrentData() async {
    Location position = Location();
    await position.getLocation();
    NetworkingHelp networkingHelp = NetworkingHelp(
        url:
            'http://api.openweathermap.org/data/2.5/weather?lat=${position.lat}&lon=${position.long}&appid=$id&units=metric');
    var data = await networkingHelp.getData();
    return (data);
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
