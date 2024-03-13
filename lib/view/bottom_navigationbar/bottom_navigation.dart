import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/view/userscreenbottom/downlaod.dart';
import 'package:prime_videos/view/userscreenbottom/livetv.dart';
import 'package:prime_videos/view/userscreenbottom/search.dart';

import 'package:prime_videos/view/userscreenbottom/store.dart';
import 'package:prime_videos/view/userpage/use_page.dart';

class PageBottom extends StatefulWidget {
  const PageBottom({super.key});

  @override
  State<PageBottom> createState() => _PageBottomState();
}

class _PageBottomState extends State<PageBottom> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    UserPage(),
    StorePage(),
    LiveTvPage(),
    DownloadPage(),
    userSearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: ColorConstants.primarWhite,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: ColorConstants.primarWhite,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv,
                color: ColorConstants.primarWhite,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.download,
                color: ColorConstants.primarWhite,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: ColorConstants.primarWhite,
              ),
              label: ""),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstants.primarycolor,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
