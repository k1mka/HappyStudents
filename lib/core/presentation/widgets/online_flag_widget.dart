import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnlineFlagWidget extends StatelessWidget {
  const OnlineFlagWidget({super.key, required this.isOnline});

  final bool isOnline;

  static const defaultDividerSize = 5.0;
  static const defaultWidth = SizedBox(width: 4);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.5),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: defaultDividerSize,
              height: defaultDividerSize,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
              ),
            ),
            defaultWidth,
            Text(
              AppLocalizations.of(context)!.online,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
