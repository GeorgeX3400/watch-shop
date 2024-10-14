// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.blue, // Primary color for the app, often used in the AppBar.
  primaryColorLight: Colors.lightBlue, // A lighter version of the primary color.
  primaryColorDark: Colors.blue[800], // A darker version of the primary color.
  scaffoldBackgroundColor: Color.fromARGB(222, 255, 255, 255), // Background color for Scaffold.
  cardColor: Colors.white, // Background color for Card widgets.
  dividerColor: Colors.grey[400], // Color of Dividers.
  disabledColor: Colors.grey[350], // Color of disabled elements.
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.black87), // Default text color.
    bodyMedium: TextStyle(color: Colors.black54), // Secondary text color.
    headlineSmall: TextStyle(color: Colors.black87), // Heading text color.
  ),
  iconTheme: IconThemeData(
    color: Colors.black54, // Default icon color.
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(), // Default border for TextFields.
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), // Default enabled border color.
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue), // Default focused border color.
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blue, // Background color of AppBar.
    iconTheme: IconThemeData(color: Colors.white), // Icon color in AppBar.
    
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue, // Background color of FloatingActionButton.
  ),
);
