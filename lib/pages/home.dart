import 'package:busticket/pages/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

int currentPageIndex = 1;
PageController pageController = PageController(initialPage: currentPageIndex);

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // Sayfa denetleyicisinin ilk sayfayı ayarlamak için kullanılması
    // pageController.initialPage = 1;
    //
  }

  void changepPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
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
      body: PageView(
        controller: pageController,
        children: const [
          SearchPage(),
          SearchPage(),
          SearchPage(),
          SearchPage(),
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
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
      ),
    );
  }
}
