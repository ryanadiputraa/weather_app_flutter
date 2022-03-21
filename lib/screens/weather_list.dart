import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_location.dart';

// class WeatherList extends StatefulWidget {
//   final List<WeatherLocation> location;
//   const WeatherList({
//     Key? key,
//     required this.location,
//   }) : super(key: key);

//   @override
//   State<WeatherList> createState() => _WeatherListState();
// }

class WeatherList extends StatelessWidget {
  final List<WeatherLocation> locations;

  const WeatherList({Key? key, required this.locations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(),
          actions: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                // ignore: avoid_print
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Image.asset(
              "assets/cloudy.jpeg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.black38),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: ListView.builder(
                  itemBuilder: (context, idx) {
                    final location = locations[idx];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(location.city,
                                style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            GestureDetector(
                              child: Text(location.temparature,
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ]),
                    );
                  },
                  itemCount: locations.length,
                ))
          ],
        ));
  }
}
