import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:legalex_app/constants.dart';
import 'package:legalex_app/ui/home_screen.dart';
import 'package:legalex_app/ui/splash_screen.dart';
import 'package:legalex_app/ui/start1_screen.dart';
import 'package:legalex_app/ui/start2_screen.dart';
import 'package:legalex_app/ui/start3_screen.dart';

import 'my_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Constants.start1BackgroundColor,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void f() {
    Future.delayed(const Duration(microseconds: 2000)).then((value) => null);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*onGenerateRoute: (RouteSettings settings) {
        //print('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          "searching": (ctx) => SearchScreenPage(settings.arguments),
          "editing": (ctx) => EditClientScreenPage(settings.arguments),
          "adminEditing": (ctx) => EditAdminScreenPage(settings.arguments)
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },*/
      routes: {

        MyRoutes.homePage: (context) {
          return HomeScreenPage();
        },
        MyRoutes.start1Page: (context) {
          return Start1ScreenPage();
        },
        MyRoutes.start2Page: (context) {
          return Start2ScreenPage();
        },
        MyRoutes.start3Page: (context) {
          return Start3ScreenPage();
        },
      },
      title: 'LEGALEX',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: Color(0xff27aa80)
      ),
      debugShowCheckedModeBanner: false,
      home: Start1ScreenPage(),
    );
  }
}