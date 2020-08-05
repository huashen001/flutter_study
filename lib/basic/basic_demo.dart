import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerTest();
  }
}

class ContainerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
            text: '你好，我的家12',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 55,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: '。net',
                  style: TextStyle(color: Colors.cyan, fontSize: 34))
            ]),
      ),
    );
  }
}

class ContainerTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1595317119,320477213&fm=26&gp=0.jpg"),
          alignment: Alignment.topCenter,
          fit: BoxFit.contain
        ),
      ),

      // color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 48,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 0.5),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(9),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 0.5),
                border: Border.all(
                  color: Colors.cyan,
                  width: 5,
                ),
                // borderRadius: BorderRadius.circular(140)
                /* borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  // bottomRight: Radius.circular(90)
                ),*/
                boxShadow: [
                  BoxShadow(
                      offset: Offset(9, 7),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 5,
                      spreadRadius: -4),
                ],
                shape: BoxShape.circle,
                /* gradient: RadialGradient(
                colors: [
                  Colors.amber,
                  Colors.redAccent
                ]
              ),*/
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.redAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}
