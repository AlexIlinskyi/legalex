import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenPage extends StatefulWidget {
  //const HomeScreenPage({super.key, required this.title});

  @override
  State<HomeScreenPage> createState() => HomeScreenPageState();
}

class HomeScreenPageState extends State<HomeScreenPage> {
  int _selectedIndex = 0;



  @override
  void initState() {
    super.initState();
  }

  Future<bool> _onWillPop() async {
    SystemNavigator.pop();

    return false;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return /*WillPopScope(
      child: */Scaffold(
        bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.green,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.red,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.yellow))),
          child: BottomNavigationBar(
            backgroundColor: Colors.green,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Calls',
              ),
            ],
          ),), /*
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xff2f4f4f),
          titleTextStyle: TextStyle(
              color: const Color(0xff2f4f4f),
              fontFamily: 'MontserratSemiBold',
              fontSize: 16),
          title: Text("LEGALEX"),
          automaticallyImplyLeading: false,
        ),*/
        backgroundColor: Colors.red,
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        )
      /*Container(
          child: Expanded(
            child: Column(
              children: [
                Text("first"),
                Text("second"),
              ],
            ),
          ),
        ),*/
      );/*,
      onWillPop: _onWillPop,
    );*/
  }
}
