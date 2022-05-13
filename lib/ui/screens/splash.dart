import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/screens/discover.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(         
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Discover()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:   BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: const DecorationImage(
            image: AssetImage("assets/images/splash-bg.jpeg")
          )
        ),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/home.png"),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Real Estate", 
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 55,
                   fontWeight: FontWeight.bold
                 ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}