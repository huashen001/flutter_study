import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/main.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstraintsTest();
  }
}


class ConstraintsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),

          )
        ],
      ),
    );
  }
}

class AspectTatioTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Colors.deepOrange,
            ),
          )
        ],
      ),
    );
  }
}


class ColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              SizedBox(
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      //borderRadius: BorderRadius.circular(8)
                      //shape: BoxShape.circle,
                      gradient: RadialGradient(
                          colors: [
                            Colors.cyan,
                            Colors.pinkAccent
                          ]
                      )
                  ),
                  child: Icon(Icons.add_circle,color: Colors.black,size: 68,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(Icons.thumbs_up_down),
              ),
              Positioned(
                right: -10,
                top: -10,
                child: Icon(Icons.thumbs_up_down),
              ),
              Positioned(
                right: 30,
                top: 100,
                child: Icon(Icons.thumbs_up_down),
              ),
              SizedBox(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.edit,color: Colors.black,size: 68,),
                ),
              )
            ],
          ),
          /*IconBadge(Icons.pool,size: 20,),
          IconBadge(Icons.account_balance,size: 20,),
          IconBadge(Icons.favorite,size: 20,)*/
        ],
      ),
    );;
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 45,255,0.5),
    );
  }
}
