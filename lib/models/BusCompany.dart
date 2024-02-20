class BusCompany {
  final String id;
  final String name;
  final String phoneNumber;
  final String email;
  final List<Bus> buses;

  BusCompany({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.buses,
  });

  factory BusCompany.fromJson(Map<String, dynamic> json) {
    // JSON'dan BusCompany nesnesini oluştururken, otobüs listesini ayrıca oluşturmalısınız.
    List<Bus> buses = [];
    if (json['buses'] != null) {
      json['buses'].forEach((busJson) {
        buses.add(Bus.fromJson(busJson));
      });
    }

    return BusCompany(
      id: json['id'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      buses: buses,
    );
  }

  Map<String, dynamic> toJson() {
    // JSON'a dönüştürürken, otobüsleri ayrıca dönüştürmeniz gerekir.
    List<Map<String, dynamic>> busListJson = [];
    buses.forEach((bus) {
      busListJson.add(bus.toJson());
    });

    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'buses': busListJson,
    };
  }
}

class Bus {
  final String id;
  final String plateNumber;
  final int seatCount;
  final String model;

  Bus({
    required this.id,
    required this.plateNumber,
    required this.seatCount,
    required this.model,
  });

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      id: json['id'],
      plateNumber: json['plateNumber'],
      seatCount: json['seatCount'],
      model: json['model'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'plateNumber': plateNumber,
      'seatCount': seatCount,
      'model': model,
    };
  }
}
