import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/model/_post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8
      ),);
  }
}

class GridViewExtendDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: Text(
          "Item $index",
          style: TextStyle(fontSize: 18, color: Colors.greenAccent),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      //scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: Text(
          "Item $index",
          style: TextStyle(fontSize: 18, color: Colors.greenAccent),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 18,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuliderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PAgeViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: true,
      //reverse:true,
      //scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint("Page:$currentPage"),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.8),
      children: <Widget>[
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          alignment: Alignment(0, 0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment(0, 0),
          child: Text(
            "FOUR",
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        )
      ],
    );
  }
}
