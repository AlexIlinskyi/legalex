import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../my_routes.dart';

class Start2ScreenPage extends StatefulWidget {
  //const HomeScreenPage({super.key, required this.title});

  @override
  State<Start2ScreenPage> createState() => Start2ScreenPageState();
}

class Start2ScreenPageState extends State<Start2ScreenPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background_general.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 44,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/logo_white.png", height: 30, width: 96,),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/illustration2.png", height: 384, width: 329,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Быстрый обмен',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GilroySemiBold',
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Быстро меняй, покупай или продавай криптовалюту в любое время!',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GilroyRegular',
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff8352dd), Color(0xff1cc5fe)],
                    begin: Alignment(-0.2, 3),
                    end: Alignment(0.2, -3),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.start3Page);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Далее',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'MontserratSemiBold',
                        fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              padding:
              EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 45),
            ),
          ],
        ),
      ),
    );
  }
}
