import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';
import 'package:prime_videos/view/bottom_navigationbar/bottom/-nav_child.dart';
import 'package:prime_videos/view/bottom_navigationbar/bottom_navigation.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primarycolor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstants.primarycolor,
          title: Text(
            'Who\'s watching?',
            style: TextStyle(
                color: ColorConstants.primarWhite,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageBottom(),
                        ));
                  },
                  icon: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(ImageConstants.personimage),
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageKidBottom()));
                  },
                  icon: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(ImageConstants.childimage),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "User ",
                style:
                    TextStyle(color: ColorConstants.primarWhite, fontSize: 18),
              ),
              Text(
                "Kids",
                style:
                    TextStyle(color: ColorConstants.primarWhite, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Add New ",
                style:
                    TextStyle(color: ColorConstants.primarWhite, fontSize: 18),
              ),
              Text(
                "Add New",
                style:
                    TextStyle(color: ColorConstants.primarWhite, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit ProfileS",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(
                        primary: ColorConstants.primarWhite,
                        backgroundColor: ColorConstants.normalGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(200, 30)))),
          ),
        ]));
  }
}
