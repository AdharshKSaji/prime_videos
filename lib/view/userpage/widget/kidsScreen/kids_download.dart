import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';

class kidsDownloadPage extends StatefulWidget {
  const kidsDownloadPage({super.key});

  @override
  State<kidsDownloadPage> createState() => _kidsDownloadPageState();
}

class _kidsDownloadPageState extends State<kidsDownloadPage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Videos Downloaded",
              style: TextStyle(
                  color: ColorConstants.primarWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Find Videos To Download",
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.primarWhite),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Auto Downloads: Off ",
                      style: TextStyle(
                          color: ColorConstants.primarWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Manage",
                          style: TextStyle(
                              color: ColorConstants.primaryBlue, fontSize: 15),
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
