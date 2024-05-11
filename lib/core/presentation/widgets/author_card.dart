import 'package:flutter/material.dart';
import 'package:happy_students/core/presentation/widgets/name_widget.dart';
import 'package:happy_students/core/presentation/widgets/online_flag_widget.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    super.key,
    required this.imageNetwork,
  });

  final String imageNetwork;

  static const backgroundColor = Color(0xFF393c43);
  static const paddingAroundImage = EdgeInsets.all(8.0);
  static const paddingAroundUserInfo = EdgeInsets.only(left: 40.0, bottom: 8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF393c43),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.network(
              imageNetwork,
              fit: BoxFit.fill,
            ),
            const Column(
              children: [
                Padding(
                  padding: paddingAroundUserInfo,
                  child: NameProfessionWidget(
                    profession: 'UI/UX Designer',
                    name: 'Elena',
                  ),
                ),
                OnlineFlagWidget(isOnline: true),
                SizedBox(height: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
