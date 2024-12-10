import 'dart:ffi';

class Client {
  final bool onlineStatus;
  final bool confirmationOfPayment;
  final String fullName;
  final String imageUrl;
  final String lastActivity;

  Client(this.onlineStatus, this.confirmationOfPayment, this.fullName, this.imageUrl, this.lastActivity);
}

List<Client> mapDynamicListToClientList(List<dynamic> dynamicList) {
  return dynamicList.map((dynamic item) {
    return Client(
      item['online_status'] as bool,
      item['confirmation_of_payment'] as bool,
      item['full_name'] as String,
      item['image_url'] as String,
      item['last_activity'] as String
    );
  }).toList();
}