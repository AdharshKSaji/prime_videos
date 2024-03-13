import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  int index = 0;
  List<String> photos = [
    "assets/images/im.jpeg",
    "assets/images/im2.jpeg",
    "assets/images/im3.jpeg",
    "assets/images/im4.jpeg",
    "assets/images/im5.jpeg"
  ];
  List<String> photosM = [
    "assets/images/movie_1.jpg",
    "assets/images/movie_3.jpeg",
    "assets/images/movie2.jpeg",
    "assets/images/series1.jpeg",
    "assets/images/troop_movie.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primarycolor,
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 220.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(photos[index]),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                        top: 180.0,
                        left: 120.0,
                        child: Row(
                          children: <Widget>[
                            DotsIndicator(dotsCount: photos.length)
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                              child: Text(
                                "Prime-Recommended Movies",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstants.primaryBlue,
                                    fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 180,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: photosM.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 140,
                                child: Card(
                                  child: Image.asset(
                                    photosM[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            }))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Text(
                            "Original Series",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryBlue,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    height: 180,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: photosM.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 140,
                            child: Card(
                              child: Image.asset(
                                photosM[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Text(
                            "Top Movies",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryBlue,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    height: 180,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: photosM.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 140,
                            child: Card(
                              child: Image.asset(
                                photosM[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }))
              ],
            )
          ],
        ));
  }
}
