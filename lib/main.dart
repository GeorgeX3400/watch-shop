import 'package:ecommerceuiapp/pages/cart/logic/cart_provider.dart';
import 'package:ecommerceuiapp/pages/favorites/logic/favorites_provider.dart';
import 'package:ecommerceuiapp/pages/home/home_page.dart';
import 'package:ecommerceuiapp/pages/settings/logic/settings_provider.dart';
import 'package:ecommerceuiapp/themes/dark_theme.dart';
import 'package:ecommerceuiapp/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingsProvider>(create: (context) => SettingsProvider()), 
        ChangeNotifierProvider<FavoritesProvider>(create: (context) => FavoritesProvider()), 
        ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider())],
      builder: (context, child) {
        final settingsProvider = context.watch<SettingsProvider>();
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme.copyWith(
            primaryColor: settingsProvider.primaryColor,
            primaryColorDark: settingsProvider.primaryColorDark,
            primaryColorLight: settingsProvider.primaryColorLight,
            appBarTheme: AppBarTheme(
              color: settingsProvider.primaryColor, // Background color of AppBar.
              iconTheme: IconThemeData(color: Colors.white), // Icon color in AppBar.   
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: settingsProvider.primaryColor, // Background color of FloatingActionButton.
            ),
          ),
          darkTheme: darkTheme.copyWith(
            primaryColor: settingsProvider.primaryColor,
            primaryColorDark: settingsProvider.primaryColorDark,
            primaryColorLight: settingsProvider.primaryColorLight,
            appBarTheme: AppBarTheme(
              color: settingsProvider.primaryColor, // Background color of AppBar.
              iconTheme: IconThemeData(color: Colors.white, // Icon color in AppBar.   
            )),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: settingsProvider.primaryColor, // Background color of FloatingActionButton.
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
