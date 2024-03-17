import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';

class userSearchPage extends StatefulWidget {
  const userSearchPage({super.key});

  @override
  State<userSearchPage> createState() => _userSearchPageState();
}

class _userSearchPageState extends State<userSearchPage> {
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
                backgroundImage: AssetImage(ImageConstants.personimage),
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
                                  borderRadius: BorderRadius.circular(5)),
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
          SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Column(
                      children: [],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Genres",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primarWhite),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          color: Color.fromARGB(255, 43, 41, 41),
                          child: Center(
                            child: Text("Horror",
                                style: TextStyle(
                                    color: ColorConstants.primarWhite)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            color: Color.fromARGB(255, 43, 41, 41),
                            child: Center(
                              child: Text("Anime",
                                  style: TextStyle(
                                      color: ColorConstants.primarWhite)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          color: Color.fromARGB(255, 43, 41, 41),
                          child: Center(
                            child: Text("Fantasy",
                                style: TextStyle(
                                    color: ColorConstants.primarWhite)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            color: Color.fromARGB(255, 43, 41, 41),
                            child: Center(
                              child: Text("Documentary",
                                  style: TextStyle(
                                      color: ColorConstants.primarWhite)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          color: Color.fromARGB(255, 43, 41, 41),
                          child: Center(
                            child: Text(
                              "Drama",
                              style:
                                  TextStyle(color: ColorConstants.primarWhite),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            color: Color.fromARGB(255, 43, 41, 41),
                            child: Center(
                              child: Text(
                                "Comedy",
                                style: TextStyle(
                                    color: ColorConstants.primarWhite),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "See More",
                                style: TextStyle(
                                    color: ColorConstants.primarWhite),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Featured Collections",
                          style: TextStyle(
                              color: ColorConstants.primarWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                              fontSize: 14, color: ColorConstants.primarWhite),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right,
                                color: ColorConstants.primarWhite))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Malayalam",
                          style: TextStyle(
                              fontSize: 14, color: ColorConstants.primarWhite),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right,
                                color: ColorConstants.primarWhite))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Korean",
                          style: TextStyle(
                              fontSize: 14, color: ColorConstants.primarWhite),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right,
                                color: ColorConstants.primarWhite))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "See More",
                                style: TextStyle(
                                    color: ColorConstants.primarWhite),
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
