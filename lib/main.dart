import 'package:fitnessapp/Account_setup_screen/Height.dart';
import 'package:fitnessapp/Account_setup_screen/age.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Rest_Page.dart';
import 'package:fitnessapp/intro_screens/onboarding_screen.dart';
import 'package:fitnessapp/Account_setup_screen/weight.dart';
import 'package:fitnessapp/welcome_screens/splashscreen.dart';
import 'package:fitnessapp/welcome_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Theme_Provider/Provider.dart';
import 'custom.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'FitnessApp';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode:  themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home:  splashscreen(),
        );
      }
    );
  }
}


