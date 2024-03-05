class Ticket {
  final int ticketID;

  final String userName;

  final int pnrNO;
  final int chairno;
  final int price;

  final String traveldestination;
  final bool status;
  final String companyImage;

  Ticket({
    required this.ticketID,
    required this.userName,
    required this.pnrNO,
    required this.chairno,
    required this.price,
    required this.traveldestination,
    required this.status,
    required this.companyImage,
  });
}
