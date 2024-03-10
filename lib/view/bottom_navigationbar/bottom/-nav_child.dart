import 'package:flutter/material.dart';
import 'package:prime_videos/core/constants/color_constant.dart';
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
    kids_home(),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstants.primarycolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
