import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn? ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    cursorColor: Colors.black,
    unselectedWidgetColor: Colors.black,
    primaryColor: Colors.grey.shade800,
    backgroundColor: Colors.grey.shade800,
    accentColor: Colors.white,
    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.shade800,
      textColor: Colors.white,
    ),
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(
      color: Colors.white,opacity: 0.8,
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
    unselectedWidgetColor: Colors.white,
    cursorColor: Colors.white,
    primaryColor: Colors.deepPurpleAccent.withOpacity(0.2),
      backgroundColor: Colors.white,
      listTileTheme: ListTileThemeData(
        tileColor: Colors.white,
        textColor: Colors.black,
      ),
    colorScheme: ColorScheme.light(),
      accentColor: Colors.deepPurpleAccent,
      iconTheme: IconThemeData(
        color: Colors.black,
      )
  );
}