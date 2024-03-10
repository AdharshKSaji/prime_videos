import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';
import 'package:prime_videos/view/userpage/widget/kidsScreen/kids_home.dart';

class KidsPage extends StatefulWidget {
  @override
  State<KidsPage> createState() => _KidsPageState();
  int photoindex = 0;
}

class _KidsPageState extends State<KidsPage> {
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
                backgroundImage: AssetImage(ImageConstants.personimage),
              ),
            ),
            kids_home(),
          ],
        ));
  }
}
