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
        backgroundColor: ColorConstants.normalBlack,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "LiVE TV",
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
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 150,
                width: 150,
                child: Column(
                  children: [
                    Container(
                        height: 140,
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
                            })),
                  ],
                ),
              )
            ]),
          ],
        ));
  }
}
