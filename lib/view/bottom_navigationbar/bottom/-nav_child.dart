import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
import 'package:prime_videos/view/userpage/kids_page.dart';
import 'package:prime_videos/view/userpage/widget/kidsScreen/kids_download.dart';
import 'package:prime_videos/view/userpage/widget/kidsScreen/kids_home.dart';
import 'package:prime_videos/view/userpage/widget/kidsScreen/kids_search.dart';

class PageKidBottom extends StatefulWidget {
  const PageKidBottom({super.key});

  @override
  State<PageKidBottom> createState() => _PageKidBottomState();
}

class _PageKidBottomState extends State<PageKidBottom> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    KidsPage(),
    kidsDownloadPage(),
    kidsSearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.normalBlack,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
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
        onTap: _onItemTapped,
      ),
    );
  }
}
