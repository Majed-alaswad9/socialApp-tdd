import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color primaryColor = const Color(0xFF0C7075);
Color secondaryColor = const Color(0xFF072E33);

//light theme
final lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
        bodyLarge: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        bodyMedium: const TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        headlineSmall: const TextStyle(color: Colors.black),
        bodySmall:
            const TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
        headlineMedium: const TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        titleMedium: const TextStyle(color: Colors.black),
        titleSmall: TextStyle(color: Colors.grey.shade300),
        titleLarge:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: primaryColor,
        elevation: 10));

// dark theme
final darkTheme = ThemeData(
    useMaterial3: true,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xFF242F3D)),
    dialogTheme: const DialogTheme(backgroundColor: Color(0xFF242F3D)),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF17212B)),
    popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF242F3D), textStyle: TextStyle(color: Colors.white)),
    scaffoldBackgroundColor: const Color(0xFF0E1621),
    cardColor: const Color(0xFF242F3D),
    listTileTheme: const ListTileThemeData(
        iconColor: Colors.white, textColor: Colors.white),
    textTheme: TextTheme(
        bodySmall:
            const TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
        bodyLarge: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        bodyMedium: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        headlineSmall: const TextStyle(color: Colors.white),
        headlineMedium: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        titleMedium: const TextStyle(color: Colors.white),
        titleSmall: TextStyle(color: Colors.grey.shade300),
        titleLarge:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        backgroundColor: const Color(0xFF242F3D),
        elevation: 10));