import 'package:flutter/material.dart';


class BottomDemo extends StatefulWidget {
  @override
  _BottomDemoState createState() => _BottomDemoState();
}

class _BottomDemoState extends State<BottomDemo> {

  int _currentIndex = 0;

  void _onTapHandler (int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text("Add")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.web),
            title: Text("Reduce")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("List")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            title: Text("List")
        ),
      ],
    );
  }
}
