import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';
import 'package:prime_videos/view/dammydb.dart';

class LiveTvPage extends StatefulWidget {
  const LiveTvPage({super.key});

  @override
  State<LiveTvPage> createState() => _LiveTvPageState();
}

class _LiveTvPageState extends State<LiveTvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 37, 6),
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Live TV",
            style: TextStyle(
              fontSize: 20,
              color: ColorConstants.primarWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                backgroundImage: AssetImage(ImageConstants.personimage),
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "BBC KIDS",
                style: TextStyle(color: ColorConstants.normalyewllow),
              ),
              Column(
                children: [
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
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: DummyDb.datas.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 180,
                                  child: Card(
                                    color: ColorConstants.normalBlack,
                                    child: Center(
                                      child: Text(
                                        DummyDb.datas[index]["data1"],
                                        style: TextStyle(
                                            color: ColorConstants.primarWhite),
                                      ),
                                    ),
                                    // child: Image.asset(
                                    //   DummyDb.photoslist[index]["imgurl"],
                                    //   fit: BoxFit.fill,
                                    // ),
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
                                  "Kids Player",
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
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 140,
                                  child: Card(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            "bley",
                                            style: TextStyle(
                                                color:
                                                    ColorConstants.primarWhite),
                                          ),
                                        ],
                                      ),
                                    ),
                                    color: ColorConstants.normalBlack,
                                  ),
                                );
                              }))
                    ],
                  ),
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
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Center(
                                  child: Text(
                                    "TV SHOW \ON LIVE",
                                    style: TextStyle(
                                        color: ColorConstants.primarWhite),
                                  ),
                                ),
                                color: ColorConstants.normalBlack,
                              ),
                            );
                          }))
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 180,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Center(
                                    child: Center(
                                        child: Text(
                                  "LIVE START SOON...",
                                  style: TextStyle(
                                      color: ColorConstants.primarWhite),
                                ))),
                                color: ColorConstants.normalBlack,
                              ),
                            );
                          }))
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 180,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Center(
                                    child: Center(
                                  child: Text(
                                    "WATCH AGAIN!..",
                                    style: TextStyle(
                                        color: ColorConstants.primarWhite),
                                  ),
                                )),
                                color: ColorConstants.normalBlack,
                              ),
                            );
                          }))
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 180,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 140,
                              child: Card(
                                child: Center(child: Text("")),
                                color: ColorConstants.normalBlack,
                              ),
                            );
                          }))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
