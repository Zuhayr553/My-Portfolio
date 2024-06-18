import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zuhayr Noor Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyMedium: TextStyle(color: bodyMediumColor),
              bodySmall: TextStyle(color: bodyTextColor),
              bodyLarge: TextStyle(color: bodyMediumColor),
              headlineMedium: TextStyle(color: bodyMediumColor),
              headlineSmall: TextStyle(color: bodyMediumColor),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
