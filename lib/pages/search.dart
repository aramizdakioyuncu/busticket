import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: IconButton(
              icon: Icon(Icons.directions_bus),
              onPressed: () {
                // Otobüs seçeneğine tıklandığında yapılacak işlemler
              },
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.airplanemode_active),
              onPressed: () {
                // Uçak seçeneğine tıklandığında yapılacak işlemler
              },
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.hotel),
              onPressed: () {
                // Otel seçeneğine tıklandığında yapılacak işlemler
              },
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.directions_car),
              onPressed: () {
                // Araç seçeneğine tıklandığında yapılacak işlemler
              },
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.directions_boat),
              onPressed: () {
                // Feribot seçeneğine tıklandığında yapılacak işlemler
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Select your travel option here'),
      ),
    );
  }
}
