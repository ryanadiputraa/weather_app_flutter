import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/models/weather_location.dart';
import 'package:weather_app/screens/weather_list.dart';
import 'package:weather_app/widgets/single_weather.dart';
import 'package:weather_app/widgets/slider_dot.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  int _currentPage = 0;
  String bgImage = "assets/sunny.jpg";

  var locationList = <WeatherLocation>[
    WeatherLocation(
      city: 'Palu',
      dateTime: '10:30 PM — Sunday, 20 March 2022',
      temparature: '26\u2103',
      weatherType: 'Night',
      iconUrl: 'assets/moon.svg',
      wind: 10,
      rain: 2,
      humidity: 5,
      isFavorite: true,
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
      isFavorite: true,
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
      isFavorite: true,
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
      isFavorite: false,
    ),
  ];

  onSetFavorite(WeatherLocation location) {
    print(location.isFavorite);
    setState(() {
      location.isFavorite = !location.isFavorite;
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (locationList[_currentPage].weatherType) {
      case "Sunny":
        bgImage = "assets/sunny.jpg";
        break;

      case "Night":
        bgImage = "assets/night.jpg";
        break;

      case "Cloudy":
        bgImage = "assets/cloudy.jpeg";
        break;

      case "Rainy":
        bgImage = "assets/rainy.jpg";
        break;

      default:
        bgImage = "assets/sunny.jpg";
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              // ignore: avoid_print
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeatherList(
                            location: locationList,
                          ))),
              child: SvgPicture.asset(
                'assets/menu.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
      body: Stack(children: [
        Image.asset(
          bgImage,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black38),
        ),
        Container(
          margin: const EdgeInsets.only(top: 120, left: 15),
          child: Row(
            children: [
              for (int i = 0; i < locationList.length; i++)
                if (_currentPage == i)
                  const SliderDot(isActive: true)
                else
                  const SliderDot(isActive: false)
            ],
          ),
        ),
        PageView.builder(
            itemCount: locationList.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
            itemBuilder: (ctx, idx) {
              return SingleWeather(
                location: locationList[idx],
                onSetFavorite: onSetFavorite,
              );
            })
      ]),
    );
  }
}
