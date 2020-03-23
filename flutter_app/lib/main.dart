import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import './pages/index_page.dart';

void main() {
//  runApp(PaddingWidget());
//  runApp(MaterialApp(
//    title: "My App",
//    home: _TestContainer(),
//  ));
//  runApp(_CakeApp());

//  runApp(MaterialApp(title: 'IconButton', home: new _HorizonListView()));
//  runApp(SampleApp());
//  runApp(SingleScrollViewTest());
//  runApp(ListViewCustomTest(
//      items: List<String>.generate(10000, (i) => "Item $i")));
  runApp(TestProject());
}

class TestProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "百姓生活",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Sample App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SampleAppPage(),
    );
  }
}

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "PaddingWidget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Padding App"),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              "Hello",
              textAlign: TextAlign.center,
              style: (TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold)),
            ),
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
          ),
        ),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() {
    // TODO: implement createState
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage>
    with WidgetsBindingObserver {
  String textToShow = "I like Flutter";

  void _updateText() {
    setState(() {
      textToShow =
          "Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!Flutter is Awesome!";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App",
            textAlign: TextAlign.center,
            style: (TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold))),
      ),
      body: Center(
          child: Text(textToShow,
              textAlign: TextAlign.center,
              style: (TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold)))),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: "Update Text",
        child: Icon(Icons.update),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("单次Frame绘制回调");
    });
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      print("实时Frame绘制回调");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("$state");
    if (state == AppLifecycleState.resumed) {}
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "NavigationMenu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "search",
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text("Hello World"),
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        print("My Button are tapped");
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text("Engage"),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<Counter> with WidgetsBindingObserver {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
//        CounterIncrementor(onPressed: _increment),
//        CounterDisplay(count: _counter),
        Image.asset(
          'images/bg_default_banner.png',
          width: 100,
          height: 100,
        ),
//        Expanded(
//          child: Image.asset(
//            'images/bg_default_banner.png',
//            width: 100,
//            height: 100,
//          ),
//        ),
//        Expanded(
//          flex: 1,
//          child: Image.asset(
//            'images/bg_default_banner.png',
//          ),
//        ),
//        Expanded(
//          child: Image.asset(
//            'images/bg_default_banner.png',
//          ),
//        ),
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Count:$count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: onPressed,
      child: Text("Increment"),
    );
  }
}

class MaterialTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MaterialTestApp App"),
        ),
        body: CounterIncrementor(),
      ),
    );
  }
}

class NonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          "NonMaterialApp",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.black87),
        ),
      ),
    );
  }
}

class MainAxisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
      ],
    );
  }
}

/// 星级View
var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
  ],
);

/// 评分View
final ratings = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      stars,
      Text(
        '170 Reviews',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20),
      )
    ],
  ),
);

final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2);

/// 图标行
final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP'),
              Text("25 min"),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOL'),
              Text("1 hr"),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('FEEDS'),
              Text("4-6"),
            ],
          ),
        ],
      ),
    ));

final title = Text('Beautiful Cake');

final subTitle = Text(
    'When the children saw the beautiful Christmas tree, they looked and looked');

/// 左边介绍和图标
final leftColumn = Container(
  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: <Widget>[
      title,
      subTitle,
      ratings,
      iconList,
    ],
  ),
);

class _CakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Cake App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Cake App"),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 300,
                    child: leftColumn,
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset("images/cake.png"),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class _TestContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.black26),
      child: Column(
        children: <Widget>[
          Icon(Icons.timer, color: Colors.red),
          Icon(Icons.kitchen, color: Colors.green[500]),
//        Icon(Icons.timee)
        ],
      ),
    );
  }
}

/// IconBUTTON
class _IconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: new Center(
        child: IconButton(
          icon: Icon(Icons.phone),
          onPressed: () {
            print('按下操作');
          },
        ),
      ),
    );
  }
}

/// RaisedButton
class _RaiseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Raisebutton'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Raise Button'),
          onPressed: () {
            print('按下按钮');
          },
        ),
      ),
    );
  }
}

class _ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Raisebutton'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}

class _HorizonListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Raisebutton'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text('1'),
            ),
          ],
        ),
      ),
    );
  }
}

/// 长列表
class _LongListView extends StatelessWidget {
  List<String> items;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Long AppBar'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Test'),
          );
        },
      ),
    );
  }
}

Widget buildToBottomRow(BuildContext context) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset("images/cake.png", width: 80, height: 80),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("抖音", maxLines: 1),
            Text("2019.6.25", maxLines: 1),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: Text("OPEB"),
      )
    ],
  );
}

class MaterialBoxConstraintsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Colors.green;
    // TODO: implement build
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MaterialTestApp App"),
        ),
        body: Container(
          constraints: BoxConstraints.tight(Size(100, 100)),
          color: Colors.red,
          child: Text(
            "Hello world",
            style: TextStyle(background: paint),
          ),
        ),
      ),
    );
  }
}

class MaterialFlexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Colors.green;
    // TODO: implement build
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("MaterialTestApp App"),
          ),
          body: Row(
            children: <Widget>[
              Flexible(
                child: Text('sssssssssss'),
              )
            ],
          )),
    );
  }
}

class MaterialStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Deom",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter层叠布局'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 200,
              top: 200,
              child:
                  Image.asset("images/cake.png", width: 200, fit: BoxFit.cover),
            ),
            Padding(padding: EdgeInsets.all(10), child: Text("Hello Stack")),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                constraints: BoxConstraints.tightFor(width: 200, height: 200),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                      colors: [Colors.green, Colors.blue],
                      center: Alignment.topLeft,
                      radius: 98),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ],
                ),
                transform: Matrix4.rotationZ(.2),
                alignment: Alignment.center,
                child: Text(
                  "Hello Stack",
                  style: TextStyle(color: Colors.blue, fontSize: 40.0),
                )),
          ],
        ),
      ),
    );
  }
}

class SingleScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Deom",
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter滚动组件'),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: <Widget>[Text('Hellow Flutter' * 100)],
            ),
          ),
        ));
  }
}

class SingleListViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Deom",
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter滚动组件'),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: <Widget>[Text('Hellow Flutter' * 100)],
            ),
          ),
        ));
  }
}

class ListViewTest extends StatelessWidget {
  final List<String> items;

  ListViewTest({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Deom",
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter滚动组件'),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text('${items[index]}'));
              }),
        ));
  }
}

class ListViewSeparatorTest extends StatelessWidget {
  final List<String> items;

  ListViewSeparatorTest({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Deom",
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter滚动组件'),
          ),
          body: ListView.separated(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text('${items[index]}'));
            },
            separatorBuilder: (context, index) {
              return Container(
                constraints: BoxConstraints.tightFor(height: 10),
                color: Colors.red,
              );
            },
          ),
        ));
  }
}

class ListViewCustomTest extends StatelessWidget {
  final List<String> items;

  ListViewCustomTest({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Deom",
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter滚动组件'),
          ),
          body: ListView.custom(
            childrenDelegate: SliverChildListDelegate(<Widget>[
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 1')),
              ListTile(title: Text('Title 2')),
              ListTile(title: Text('Title 2')),
              ListTile(title: Text('Title 2')),
              ListTile(title: Text('Title 2')),
              ListTile(title: Text('Title 2')),
              ListTile(title: Text('Title 3')),
              ListTile(title: Text('Title 4')),
              ListTile(title: Text('Title 5')),
            ]),
          ),
        ));
  }
}
