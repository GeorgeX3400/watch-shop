// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  Color primaryColor = colorThemes[0]['primaryColor']!;
  Color primaryColorLight = colorThemes[0]['primaryColorLight']!;
  Color primaryColorDark = colorThemes[0]['primaryColorDark']!;

  void setColors(Color primary, Color light, Color dark) {
    primaryColor = primary;
    primaryColorLight = light;
    primaryColorDark = dark;
    notifyListeners();
  }
}

List<Map<String, Color>> colorThemes = [
  {
    'primaryColor':  Color.fromARGB(255, 242, 130, 1), // Vibrant Orange
    'primaryColorLight': Color.fromARGB(255, 255, 134, 47), // Light Orange
    'primaryColorDark': Color.fromARGB(255, 180, 97, 2), // Dark Orange
  },
  {
    'primaryColor': Color.fromARGB(255, 4, 188, 255), // Bright Blue
    'primaryColorLight': Color.fromARGB(255, 87, 195, 253), // Light Blue
    'primaryColorDark': Color.fromARGB(255, 5, 120, 173), // Dark Blue
  },
  {
    'primaryColor': Color.fromARGB(255, 5, 230, 46), // Fresh Green
    'primaryColorLight': Color.fromARGB(255, 60, 220, 60), // Light Green
    'primaryColorDark': Color.fromARGB(255, 14, 154, 1), // Dark Green
  },
  {
    'primaryColor': Color.fromARGB(255, 143, 0, 252), // Purple
    'primaryColorLight': Color.fromARGB(255, 190, 104, 255), // Light Purple
    'primaryColorDark': Color.fromARGB(255, 72, 0, 128), // Dark Purple
  },
  {
    'primaryColor': Color.fromARGB(255, 255, 206, 8), // Bright Yellow
    'primaryColorLight': Color.fromARGB(255, 255, 224, 101), // Light Yellow
    'primaryColorDark': Color.fromARGB(255, 194, 155, 3), // Dark Yellow
  },
  {
    'primaryColor': Color.fromARGB(255, 252, 32, 7), // Vivid Red
    'primaryColorLight': Color.fromARGB(255, 255, 75, 55), // Light Red
    'primaryColorDark': Color.fromARGB(255, 182, 21, 3), // Dark Red
  },
  {
    'primaryColor': Color.fromARGB(255, 41, 222, 117), // Spring Green
    'primaryColorLight': Color(0xFF58D68D), // Light Spring Green
    'primaryColorDark': Color(0xFF28A745), // Dark Spring Green
  },
  {
    'primaryColor': Color(0xFF1ABC9C), // Teal
    'primaryColorLight': Color(0xFF48C9B0), // Light Teal
    'primaryColorDark': Color(0xFF16A085), // Dark Teal
  },
  {
    'primaryColor': Color(0xFFF39C12), // Amber
    'primaryColorLight': Color(0xFFF7B955), // Light Amber
    'primaryColorDark': Color(0xFFD68910), // Dark Amber
  },
  
];
