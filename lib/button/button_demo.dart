import 'package:flutter/cupertino.dart';
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
            page: _RaiseWidgtDemo(),
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
    icon: Icon(Icons.add_circle),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionDemo'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButtonExtend,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class _WidgtDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            "Button",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          label: Text(
            "Button",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.add_box),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgtDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[FlatButtonDemo],
        ),
      ),
    );
  }
}

class _RaiseWidgtDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            "Button",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          shape: StadiumBorder(),
        ),
        SizedBox(width: 16),
        Theme(
          data: Theme.of(context)
              .copyWith(buttonColor: Theme.of(context).accentColor),
          child: RaisedButton.icon(
            label: Text(
              "Button",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Icon(Icons.add_box),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0,
            // textColor: Theme.of(context).accentColor,
            //textTheme: ButtonTextTheme.primary,
          ),
        ),
        /*RaisedButton.icon(
          label: Text(
            "Button",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.add_box),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 20,
          // textColor: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )*/
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgtDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[FlatButtonDemo],
        ),
      ),
    );
  }
}
