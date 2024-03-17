import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/view/dammydb.dart';

class RentPage extends StatefulWidget {
  const RentPage({super.key});

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  int index = 0;
  // List<String> photos = [
  //   "assets/images/im2.jpeg",
  //   "assets/images/im5.jpeg"
  //       "assets/images/im.jpeg",
  //   "assets/images/im3.jpeg",
  //   "assets/images/im4.jpeg",
  // ];
  // List<String> series = [
  //   "assets/images/dw1.jpeg",
  //   "assets/images/dw5.jpeg",
  //   "assets/images/dw2.jpeg",
  //   "assets/images/dw3.jpeg",
  //   "assets/images/dw4.jpeg",
  // ];
  // List<String> photosM = [
  //   "assets/images/movie_1.jpg",
  //   "assets/images/movie_3.jpeg",
  //   "assets/images/movie2.jpeg",
  //   "assets/images/series1.jpeg",
  //   "assets/images/troop_movie.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primarycolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 220.0,
                        child: ListView.builder(
                          shrinkWrap: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: DummyDb.thriller.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Image.network(
                                DummyDb.thriller[index]["imgurl"],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                          top: 180.0,
                          left: 150.0,
                          child: Row(
                            children: <Widget>[
                              DotsIndicator(dotsCount: DummyDb.thriller.length)
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
                                  "Top 10 purchases ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.normalyewllow,
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
                              itemCount: DummyDb.movies.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 140,
                                  child: Card(
                                      child: Image.network(
                                    DummyDb.movies[index]["imgurl"],
                                    fit: BoxFit.fill,
                                  )),
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
                              "Action and thriller",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.normalyewllow,
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
                          itemCount: DummyDb.RENTLIST.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Image.network(
                                  DummyDb.RENTLIST[index]["imgurl"],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }))
                ],
              )
            ],
          ),
        ));
  }
}
