import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';

class kidsSearchPage extends StatefulWidget {
  const kidsSearchPage({super.key});

  @override
  State<kidsSearchPage> createState() => _kidsSearchPageState();
}

class _kidsSearchPageState extends State<kidsSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack,
      appBar: AppBar(
          backgroundColor: Colors.black,
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
            )
          ]),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        height: 50,
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: ColorConstants.normalGrey,
                              ),
                              hintText: "search by actors,title...",
                              hintStyle:
                                  TextStyle(color: ColorConstants.normalGrey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              suffixIcon: Icon(
                                Icons.mic,
                                color: ColorConstants.normalGrey,
                              )),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
