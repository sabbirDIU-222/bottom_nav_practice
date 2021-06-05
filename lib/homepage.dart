import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentindex = 0;

  /*final tabs = [
    Center(child: Text('Home'),),
    Center(child: Text('business'),),
    Center(child: Text('camera'),),
    Center(child: Text('setting'),),
  ];
*/
  List<Widget> _tabs = [
    Text('home'),
    Text('carrer'),
    Text('feature'),
    Text('setting'),
  ];

  void _OnTapFunction(int index){
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nav bar'),
        centerTitle: true,
        elevation: 0,
      ),
      // make a empty body
      body: _tabs.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        /*iconSize: 50,
        selectedFontSize: 30,*/
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.blue,
        elevation: 0,
        currentIndex: _currentindex,
        onTap: _OnTapFunction,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
            activeIcon: Icon(Icons.airplanemode_active)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              label: 'carrer',
              backgroundColor: Colors.amber,
             activeIcon: Icon(Icons.search)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'camera',
              backgroundColor: Colors.purple,
              activeIcon: Icon(Icons.featured_play_list_outlined)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Colors.blue,
            activeIcon: Icon(Icons.person)
          ),
        ],
      ),

    );
  }
}
