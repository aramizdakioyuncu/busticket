import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPage();
}

late TabController tabController;

class _AccountPage extends State<AccountPage> with TickerProviderStateMixin {
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
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Hesabım",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: [
          ListTile(
            title: Text("Seyahatlerim"),
            leading: Icon(Icons.roundabout_left),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Kampanyalarım"),
            leading: Icon(Icons.card_giftcard),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Alarmlarım"),
            leading: Icon(Icons.alarm),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Profilim"),
            leading: Icon(Icons.man),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Yardım"),
            leading: Icon(Icons.help),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Ayarlar"),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Hakkımızda"),
            leading: Icon(Icons.info),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Çıkış Yap"),
            leading: Icon(Icons.exit_to_app),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
