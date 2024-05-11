import 'dart:ffi';

class Client {
  final Bool onlineStatus;
  final Bool confirmationOfPayment;
  final String fullName;
  final String imageUrl;
  final String lastActivity;

  Client(this.onlineStatus, this.confirmationOfPayment, this.fullName, this.imageUrl, this.lastActivity);
}