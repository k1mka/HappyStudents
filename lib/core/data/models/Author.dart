import 'dart:ffi';

class Author {
  final String fullName;
  final String speciality;
  final String profileDescription;
  final int rating;
  final bool onlineStatus;
  final String lastActivity;
  final String imageUrl;

  Author(this.fullName, this.speciality, this.profileDescription, this.rating, this.onlineStatus, this.lastActivity, this.imageUrl);
}

List<Author> mapDynamicListToAuthorList(List<dynamic> dynamicList) {
  return dynamicList.map((dynamic item) {
    return Author(
      item['full_name'] as String,
      item['speciality'] as String,
      item['profile_description'] as String,
      item['rating'] as int,
      item['online_status'] as bool,
      item['last_activity'] as String,
      item['image_url'] as String,
    );
  }).toList();
}