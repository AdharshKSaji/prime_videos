import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';

class kids_home extends StatefulWidget {
  const kids_home({super.key});

  @override
  State<kids_home> createState() => _kids_homeState();
}

class _kids_homeState extends State<kids_home> {
  int index = 0;

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
    );
  }
}
