import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimensions.dart';

ThemeData? themeData() {
  return ThemeData(
      primarySwatch: createMaterialColor(primaryColor),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color:Colors.white,
      ),
      primaryColor: Colors.orange,
      textTheme: GoogleFonts.montserratTextTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedIconTheme: IconThemeData(color: Colors.orange),
        unselectedIconTheme: IconThemeData(color: Colors.black)
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
                 BorderSide(color: Colors.black, style: BorderStyle.solid),
              ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(0))),
          padding: MaterialStateProperty.all(EdgeInsets.all(Dimensions.size8))
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
              vertical: Dimensions.size12, horizontal: Dimensions.size20),
          filled: true,
          fillColor: veryLightGreyColor,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: lightGreyColor),
              borderRadius: BorderRadius.circular(0)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: lightGreyColor),
              borderRadius: BorderRadius.circular(0))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              elevation: MaterialStateProperty.all(0),
              
              
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(0))))));
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
