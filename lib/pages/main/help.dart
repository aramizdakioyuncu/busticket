import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({
    super.key,
  });

  @override
  State<HelpPage> createState() => _HelpPage();
}

late TabController tabController;

class _HelpPage extends State<HelpPage> with TickerProviderStateMixin {
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
    return const Scaffold(
        body: Column(
      children: [Text("sasdasd")],
    ));
  }
}
