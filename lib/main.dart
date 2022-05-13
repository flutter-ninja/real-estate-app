import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: const Color.fromRGBO(34, 52, 68, 1)
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}


