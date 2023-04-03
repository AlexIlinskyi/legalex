import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../my_routes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key,});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    final _screen =  MediaQuery.of(context).size;

    Future.delayed(const Duration(milliseconds: 1500), () async {
      Navigator.popAndPushNamed(context, MyRoutes.homePage);
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(bottom: 150.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo_splash.png", height: 93, width: 256,)
            ],
          ),
        )
      )
    );
  }
}