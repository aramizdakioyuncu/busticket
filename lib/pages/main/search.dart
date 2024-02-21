import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

late TabController tabController;

class _SearchPage extends State<SearchPage> with TickerProviderStateMixin {
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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: FractionallySizedBox(
              heightFactor: 1.0,
              widthFactor: 1.0,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Positioned.fill(
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.5),
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 390,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: TabBar(
                              indicatorPadding: const EdgeInsets.all(3),
                              indicatorColor: Colors.black,
                              indicator: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              labelColor: Colors.white,
                              controller: tabController,
                              isScrollable: false,
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: const [
                                Tab(
                                  icon: Icon(Icons.directions_bus, size: 25),
                                  iconMargin: EdgeInsets.only(bottom: 3),
                                  text: 'Otobüs',
                                ),
                                Tab(
                                  icon:
                                      Icon(Icons.airplanemode_active, size: 25),
                                  iconMargin: EdgeInsets.only(bottom: 3),
                                  text: 'Uçak',
                                ),
                                Tab(
                                  icon: Icon(Icons.hotel, size: 25),
                                  iconMargin: EdgeInsets.only(bottom: 3),
                                  text: 'Otel',
                                ),
                                Tab(
                                  icon: Icon(Icons.directions_car, size: 25),
                                  iconMargin: EdgeInsets.only(bottom: 3),
                                  text: "Araç",
                                ),
                                Tab(
                                  icon: Icon(Icons.directions_boat, size: 25),
                                  iconMargin: EdgeInsets.only(bottom: 3),
                                  text: 'Feribot',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Column(
                  children: [
                    Text(
                        "Otobüs ile yapılan yolculuklar çok zevklidir impsumasd kmsaakşf ksşa fkşfkşas fkşsfşskosof şkfsaşoş")
                  ],
                ),
                SizedBox(),
                SizedBox(),
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
