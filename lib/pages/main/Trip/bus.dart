import 'package:busticket/models/ticket_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TripBusPage extends StatefulWidget {
  const TripBusPage({
    super.key,
  });

  @override
  State<TripBusPage> createState() => _TripBusPage();
}

class _TripBusPage extends State<TripBusPage> with TickerProviderStateMixin {
  List<Ticket> ticketlist = [];

  @override
  void initState() {
    super.initState();

    ticketlist.add(
      Ticket(
          ticketID: 1,
          userName: "Berkay TİKENOĞLU",
          pnrNO: 1234,
          chairno: 42,
          price: 900,
          traveldestination: "ORDU FATSA YOLCULUĞU İLE GÜZEL ANILAR",
          status: false,
          companyImage:
              "https://s3.eu-central-1.amazonaws.com/static.obilet.com/images/partner/330-sm.png"),
    );

    ticketlist.add(
      Ticket(
          ticketID: 1,
          userName: "Berkay TİKENOĞLU",
          pnrNO: 1234,
          chairno: 42,
          price: 900,
          traveldestination: "ORDU FATSA YOLCULUĞU İLE GÜZEL ANILAR",
          status: false,
          companyImage:
              "https://s3.eu-central-1.amazonaws.com/static.obilet.com/images/partner/330-sm.png"),
    );

    ticketlist.add(
      Ticket(
          ticketID: 1,
          userName: "Berkay TİKENOĞLU",
          pnrNO: 1234,
          chairno: 42,
          price: 900,
          traveldestination: "ORDU FATSA YOLCULUĞU İLE GÜZEL ANILAR",
          status: true,
          companyImage:
              "https://s3.eu-central-1.amazonaws.com/static.obilet.com/images/partner/330-sm.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "PNR numarası ile bilet sorgulama",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ticketlist.length,
              itemBuilder: (context, index) {
                Ticket ticketinfo = ticketlist[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl: ticketinfo.companyImage,
                                height: 40,
                                width: 100,
                              ),
                              const Spacer(),
                              ticketinfo.status
                                  ? const Text("Sefer gerçekleştirildi")
                                  : const Text("Sefer Gerçekleştirilmedi"),
                            ],
                          ),
                          const Divider(),
                          Text(ticketinfo.traveldestination),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ticketinfo.userName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "PNR",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(ticketinfo.pnrNO.toString()),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const Text(
                                    "KOLTUK NO:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(ticketinfo.chairno.toString()),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const Text(
                                    "FİYAT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(ticketinfo.price.toString())
                                ],
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              const Text("Toplam TUTAR:"),
                              const Spacer(),
                              Text(ticketinfo.price.toString()),
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
