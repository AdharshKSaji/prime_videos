import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/core/constants/image_constant.dart';
import 'package:prime_videos/view/userpage/widget/userhome/all.dart';
import 'package:prime_videos/view/userpage/widget/userhome/movies.dart';
import 'package:prime_videos/view/userscreenbottom/storewidgets/channelpage.dart';
import 'package:prime_videos/view/userscreenbottom/storewidgets/frontpagestore.dart';
import 'package:prime_videos/view/userscreenbottom/storewidgets/rentpage.dart';

class StorePage extends StatefulWidget {
  @override
  State<StorePage> createState() => _StorePageState();
  int photoindex = 0;
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              )
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Rent",
              ),
              Tab(
                text: "Channels",
              ),
            ]),
          ),
          body: TabBarView(
            children: [FrontStorePage(), RentPage(), ChanellPage()],
          )),
    );
  }
}
