class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;
  bool isFavorite;

  WeatherLocation(
      {required this.city,
      required this.dateTime,
      required this.temparature,
      required this.weatherType,
      required this.iconUrl,
      required this.wind,
      required this.rain,
      required this.humidity,
      required this.isFavorite});
}
