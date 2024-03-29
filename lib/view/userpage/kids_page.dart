import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';
import 'package:prime_videos/view/dammydb.dart';
import 'package:prime_videos/view/userpage/widget/kidsScreen/kids_home.dart';

class KidsPage extends StatefulWidget {
  @override
  State<KidsPage> createState() => _KidsPageState();
}

class _KidsPageState extends State<KidsPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.normalBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.normalBlack,
          title: Image.asset(ImageConstants.logoapp),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.mark_unread_chat_alt,
                color: ColorConstants.primarWhite,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(ImageConstants.childimage),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
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
                                image: AssetImage(
                                    DummyDb.cartoon[index]["imgurl"]),
                                fit: BoxFit.fill)),
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
                                  "Prime- Kids and family movies",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.primarWhite,
                                      fontSize: 17),
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
                              itemCount: DummyDb.cartoon.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 140,
                                  child: Card(
                                    child: Image.asset(
                                      DummyDb.cartoon[index]["imgurl"],
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
                              "Prime - kids Orginal Series",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.primarWhite,
                                  fontSize: 17),
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
                          itemCount: DummyDb.kidseries.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Image.asset(
                                  DummyDb.kidseries[index]["imgurl"],
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
                              "Prime-Action And Adventure ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.primarWhite,
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
                          itemCount: DummyDb.kidsaction.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Image.asset(
                                  DummyDb.kidsaction[index]["imgurl"],
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
