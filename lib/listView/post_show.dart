import 'package:flutter/material.dart';
import 'package:fluttertest/model/_post.dart';

class postShow extends StatelessWidget {
  final Post post;
  postShow({
   @required this.post,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(post.imageUrl,fit: BoxFit.cover,),
          ),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: Theme.of(context).textTheme.subtitle1,),
                Text('${post.author}',style: Theme.of(context).textTheme.bodyText1,),
                SizedBox(
                  height: 32,
                ),
                Text('${post.desc}',style: Theme.of(context).textTheme.bodyText1,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
