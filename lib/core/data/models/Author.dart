import 'dart:ffi';

class Author {
  final String fullName;
  final String speciality;
  final String profileDescription;
  final Int rating;
  final Bool onlineStatus;
  final String lastActivity;
  final String imageUrl;

  Author(this.fullName, this.speciality, this.profileDescription, this.rating, this.onlineStatus, this.lastActivity, this.imageUrl);
}