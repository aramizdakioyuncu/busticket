import 'package:busticket/models/ticket_model.dart';
import 'package:busticket/pages/main/Trip/bus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TripPage extends StatefulWidget {
  const TripPage({
    super.key,
  });

  @override
  State<TripPage> createState() => _TripPage();
}

class _TripPage extends State<TripPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Seyahatlerim",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 100,
          //   child: const TabBar(
          //     indicatorSize: TabBarIndicatorSize.tab,
          //     tabs: [
          //       Tab(
          //         text: "123",
          //       )
          //     ],
          //   ),
          // ),
          Expanded(
            child: PageView(
              children: const [
                TripBusPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
