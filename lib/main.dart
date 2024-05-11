import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:happy_students/core/presentation/main_screen/main_screen.dart';
import 'package:happy_students/core/theme/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'get_it.dart';

void main() {
  setupServiceLocator();
  runApp(const ShoedStudent());
}

class ShoedStudent extends StatelessWidget {
  const ShoedStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Palette.gray,
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('en', ''),
        supportedLocales: const [
          Locale('uk', ''), // Ukraine
          Locale('en', ''), // English
        ],
        home: const MainScreen());
  }
}
