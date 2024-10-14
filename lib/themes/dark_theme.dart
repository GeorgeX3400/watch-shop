// ignore_for_file: prefer_const_constructors

import 'package:ecommerceuiapp/pages/settings/logic/settings_provider.dart';
import 'package:flutter/material.dart';


ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.teal, // Primary color for the app in dark mode.
  primaryColorLight: Colors.tealAccent, // A lighter version of the primary color.
  primaryColorDark: Colors.teal[700], // A darker version of the primary color.
  scaffoldBackgroundColor: Colors.black87, // Background color for Scaffold.
  cardColor: Colors.grey[850], // Background color for Card widgets.
  dividerColor: Colors.grey[700], // Color of Dividers.
  disabledColor: Colors.grey[700], // Color of disabled elements.
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.white70), // Default text color.
    bodyMedium: TextStyle(color: Colors.white60), // Secondary text color.
    headlineSmall: TextStyle(color: Colors.white70), // Heading text color.
  ),
  iconTheme: IconThemeData(
    color: Colors.white70, // Default icon color.
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(), // Default border for TextFields.
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), // Default enabled border color.
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.teal), // Default focused border color.
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.teal, // Background color of AppBar.
    iconTheme: IconThemeData(color: Colors.white), // Icon color in AppBar.
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.teal, // Background color of FloatingActionButton.
  ),
);
