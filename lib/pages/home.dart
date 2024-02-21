// ignore_for_file: avoid_print

import 'package:busticket/pages/main/account.dart';
import 'package:busticket/pages/main/help.dart';
import 'package:busticket/pages/main/search.dart';
import 'package:busticket/pages/main/trip.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

int currentPageIndex = 0;
PageController pageController = PageController(initialPage: currentPageIndex);
late TabController tabController;

class _HomePage extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage>, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "obilet",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 35,
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                SearchPage(),
                TripPage(),
                HelpPage(),
                AccountPage(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: 'Seyehat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Yardim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Hesabim',
          ),
        ],
        onTap: (int index) {
          print('Tıklandı: $index');
          setState(() {
            currentPageIndex = index;

            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
      ),
    );
  }
}
