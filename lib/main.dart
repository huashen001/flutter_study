import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/drawer/drawer_demo.dart';
import 'package:fluttertest/routes/NavigatorDemo.dart';
import 'package:fluttertest/slive/slive_demo.dart';
import 'package:fluttertest/view/View_demo.dart';

import 'basic/basic_demo.dart';
import 'bottom/bottomBar.dart';
import 'button/button_demo.dart';
import 'forms/forms_demo.dart';
import 'layout/layout_demo.dart';
import 'listView/ListView_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/button",
      routes: {
        "/about": (context) => PageAbout(
              title: "about",
            ),
        "/form": (context) => formDemo(),
        "/button":(context) =>ButtonDemo()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      home: appBarTest(),
    );
  }
}

class appBarTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("NINGHAO"),
          elevation: 0,
          /* leading: IconButton(
            icon: Icon(Icons.mouse),
            tooltip: "Navigration Button",
            onPressed: () => debugPrint("Navigration Button"),
          ),*/
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("print search"),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_activity),
              ),
              Tab(
                icon: Icon(Icons.menu),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            /*Tab(
              icon: Icon(
                Icons.local_activity,
                size: 245,
                color: Colors.cyan,
              ),
            ),*/
            BasicDemo(),
            /*Tab(
              icon: Icon(Icons.menu, size: 245, color: Colors.cyan),
            ),*/
            ContainerTest2(),
            /*Tab(
              icon: Icon(Icons.directions_bike, size: 245, color: Colors.cyan),
            ),*/
            ListViewDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomDemo(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    Key key,
    this.initnValue: 0,
  });

  final int initnValue;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _counter = widget.initnValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: FlatButton(
        child: Text('$_counter'),
        onPressed: () => setState(() => ++_counter),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
    print("noSuchMethod");
  }
}

class bodyTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text("测试A1PP"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation men1u',
            onPressed: null,
          )
        ],
      ),
      body: CounterWidget(),
      floatingActionButton: FloatingActionButton(
        tooltip: "ADD",
        child: Icon(Icons.add_circle),
        onPressed: null,
      ),
    );
  }
}

class Echo extends StatelessWidget {
  const Echo({Key key, @required this.text, this.backgroundColor: Colors.green})
      : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("myButton was tapped!");
      },
      child: Container(
        height: 36.0,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}

class TuroralTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class sizeBoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      height: 550,
      child: Stack(
        children: <Widget>[
          Container(
            width: 550,
            height: 550,
            color: Colors.white,
            /* decoration: BoxDecoration(
              color: Colors.blue[600],
              border: Border.all(width: 2,color: Colors.redAccent),
            ),*/
          ),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45,
                ])),
          )
        ],
      ),
    );
  }
}

class testContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200,
        ),
        padding: EdgeInsets.all(8),
        // color: Colors.blue[600],
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue[600],
            border: Border.all(width: 2, color: Colors.redAccent),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage(
              'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3506601383,2488554559&fm=26&gp=0.jpg',
            ))),
        child: Text(
          'Hello World',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
        transform: Matrix4.rotationZ(0.1),
      ),
    );
  }
}

class stackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text('tesr')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('tester', style: Theme.of(context).textTheme.headline4),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text('sdsdsd'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RowTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          const FlutterLogo(),
          const Expanded(
            child: Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
          ),
          const Icon(Icons.sentiment_very_satisfied),
        ],
      ),
    );
  }
}

class RowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                child: Icon(Icons.access_alarm),
                color: Colors.redAccent,
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: Icon(Icons.access_alarm),
                color: Colors.deepPurpleAccent,
              )),
          Expanded(
              flex: 6,
              child: Container(
                child: Icon(Icons.access_alarm),
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
