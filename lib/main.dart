import 'package:flutter/material.dart';
import 'package:johnb777/screen1.dart';
import 'package:johnb777/screen2.dart';
import 'package:johnb777/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Party_app',
      initialRoute: SplashScreen.id,
      routes: {
        // GridItemWidget.id: (context) => GridItemWidget(),
        SplashScreen.id: (context) => SplashScreen(),
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
      },
    );
  }
}