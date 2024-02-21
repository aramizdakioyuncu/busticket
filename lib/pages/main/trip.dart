import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key});

  @override
  State<TripPage> createState() => _TripPage();
}

late TabController tabController;

class _TripPage extends State<TripPage> with TickerProviderStateMixin {
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
        children: [Text("seyahat")],
      ),
    );
  }
}
