import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
          child: Stack(children: [
        Image.asset(
          'assets/night.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black38),
        ),
        Container(
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
                              'Palu',
                              style: GoogleFonts.lato(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '09:30 PM - Sunday, 13 March 2022',
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
                              '28\u2103',
                              style: GoogleFonts.lato(
                                  fontSize: 84,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/moon.svg',
                                  width: 34,
                                  height: 34,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Night',
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white38)),
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
                                '10',
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
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
                                '2',
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
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
                                '7',
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    height: 5,
                                    width: 60,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    height: 5,
                                    width: 5,
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
            ))
      ])),
    );
  }
}
