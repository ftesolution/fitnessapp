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
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
    ),
    canvasColor: Colors.grey,
    cardColor: Colors.grey.withOpacity(0.1),
    hintColor: Colors.white.withOpacity(0.6),
    unselectedWidgetColor: Colors.grey,
    dividerColor: Colors.grey.withOpacity(0.3),
    primaryColor: Colors.grey.shade800,
    backgroundColor: Colors.grey.withOpacity(0.1),
    accentColor: Colors.white,
    listTileTheme: ListTileThemeData(
      tileColor: Colors.grey.withOpacity(0.1),
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
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.black,
      ),
      dividerColor: Colors.grey.withOpacity(0.8),
    primaryColor: Colors.deepPurpleAccent.withOpacity(0.2),
      tabBarTheme: TabBarTheme(
      ),
      canvasColor: Colors.white,
      backgroundColor: Colors.white,
      cardColor: Colors.grey.withOpacity(0.2),
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