import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/models/weather_location.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.white, size: 30),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              // ignore: avoid_print
              onTap: () => print('Menu Clicked!'),
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
          margin: const EdgeInsets.only(top: 140, left: 15),
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
            itemBuilder: (ctx, i) => SingleWeather(
                  location: locationList[i],
                )),
      ]),
    );
  }
}
