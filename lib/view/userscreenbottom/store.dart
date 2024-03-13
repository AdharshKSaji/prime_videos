import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Store",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstants.primarWhite),
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
    );
  }
}
