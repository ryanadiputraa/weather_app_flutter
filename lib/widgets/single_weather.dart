import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_location.dart';

class SingleWeather extends StatelessWidget {
  final WeatherLocation location;

  const SingleWeather({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 150),
                        Text(
                          location.city,
                          style: GoogleFonts.lato(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          location.dateTime,
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          location.temparature,
                          style: GoogleFonts.lato(
                              fontSize: 84,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              location.iconUrl,
                              width: 34,
                              height: 34,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              location.weatherType,
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white38)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Wind',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            location.wind.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Km/h',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Container(
                                height: 5,
                                width: location.wind.toDouble(),
                                decoration: const BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Rain',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            location.rain.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '%',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Container(
                                height: 5,
                                width: location.rain.toDouble(),
                                decoration: const BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Humidity',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            location.humidity.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '%',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 5,
                                width: 60,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 5,
                                width: location.humidity.toDouble(),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
