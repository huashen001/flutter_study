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
          ListItem(title: "FloatActionButton",page: FloatingActionDemo(),),

        ],
      ),
    );
  }
}

class FloatingActionDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){} ,
    child: Icon(Icons.add),
    elevation: 0,
    backgroundColor: Colors.black87,


  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionDemo'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({
    this.title,
    this.page
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page),
        );
      },
    );
  }
}

