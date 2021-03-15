import 'package:flutter/material.dart';

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
      },
    );
  }
}