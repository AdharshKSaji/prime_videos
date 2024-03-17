import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/view/dammydb.dart';

class ChanellPage extends StatefulWidget {
  const ChanellPage({super.key});

  @override
  State<ChanellPage> createState() => _ChanellPageState();
}

class _ChanellPageState extends State<ChanellPage> {
  int index = 0;

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
                          itemCount: DummyDb.photoslist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Image.asset(
                                DummyDb.photoslist[index]["imgurl"],
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
                              DotsIndicator(
                                  dotsCount: DummyDb.photoslist.length)
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
                                  "Lionsgate play",
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
                              itemCount: DummyDb.movieslist.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 140,
                                  child: Card(
                                    child: Image.network(
                                      DummyDb.movieslist[index]["imgurl"],
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
                          itemCount: DummyDb.photoMlist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Image.asset(
                                  DummyDb.photoMlist[index]["imgurl"],
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
