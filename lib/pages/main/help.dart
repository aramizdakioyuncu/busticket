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
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 232, 232),
        appBar: AppBar(
          title: const Text(
            "Yardım",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     color: Colors.red,
              //     child: TextField(
              //       decoration: InputDecoration(
              //         hintText: "Nasıl Yardımcı Olabiliriz?",
              //         border: InputBorder(
              //           borderSide: BorderSide(color: Colors.green),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.directions_bus_sharp),
                  title: Text("Otobüs Bileti"),
                  subtitle: Text("Sıkça Sorulan Sorular"),
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.flight),
                  title: Text("Uçak Bileti"),
                  subtitle: Text("Sıkça Sorulan Sorular"),
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.hotel),
                  title: Text("Otel"),
                  subtitle: Text("Sıkça Sorulan Sorular"),
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.directions_car_rounded),
                  title: Text("Araç Kiralama"),
                  subtitle: Text("Sıkça Sorulan Sorular"),
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.directions_boat_rounded),
                  title: Text("Feribot Bileti"),
                  subtitle: Text("Sıkça Sorulan Sorular"),
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
            ],
          ),
        ));
  }
}
