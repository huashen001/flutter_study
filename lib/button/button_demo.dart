import 'package:flutter/material.dart';
import 'package:fluttertest/forms/forms_demo.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button '),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "FloatActionButton",
            page: FloatingActionDemo(),
          ),
          ListItem(
            title: "Button",
            page: ButtomDemo2(),
          ),
        ],
      ),
    );
  }
}

class FloatingActionDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0,
    backgroundColor: Colors.black87,
    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  );
  final Widget _floatingActionButtonExtend = FloatingActionButton.extended(
      onPressed: () {},
      label: Text("add"),
  icon: Icon(Icons.add_circle),);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionDemo'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButtonExtend,
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class ButtomDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
        elevation: 0,
      ),
    );
  }
}

