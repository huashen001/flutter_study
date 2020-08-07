import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavitagDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Home"),
              color: Colors.redAccent,
              onPressed: ()=>debugPrint("test"),

            ),
            FlatButton(
              child: Text("About"),
              color: Colors.blueAccent,
              onPressed: () {
               /* Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext c) => PageAbout(
                            title: "About",
                          )),
                );*/
               Navigator.pushNamed(context, '/about');
              },
            )
          ],
        ),
      ),
    );
  }
}

class PageAbout extends StatelessWidget {
  final String title;

  PageAbout({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class PageCount extends StatefulWidget {

  @override
  _PageCountState createState() => _PageCountState();
}

class _PageCountState extends State<PageCount> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Text("测试按钮"),

          )
        ],
      ),
    );
  }
}
