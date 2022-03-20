class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Palu',
    dateTime: '10:30 PM — Sunday, 20 March 2022',
    temparature: '26\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidity: 5,
  ),
  WeatherLocation(
    city: 'London',
    dateTime: '05:30 PM — Sunday, 20 March 2022',
    temparature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 41,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: '09:00 AM — Sunday, 20 March 2022',
    temparature: '23\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 30,
  ),
  WeatherLocation(
    city: 'Jakarta',
    dateTime: '09:30 PM — Sunday, 20 March 2022',
    temparature: '18\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/rain.svg',
    wind: 20,
    rain: 60,
    humidity: 55,
  ),
];
