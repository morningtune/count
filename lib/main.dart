import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image(
             image: AssetImage("images/K.png"),
               width: 200.0,
                height: 200.0
             ),
              ],
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Wrap(
              spacing: 8.0, // 主轴(水平)方向间距
              runSpacing: 4.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.center, //沿主轴方向居中
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('1')),
                  label: Text('Ramsdale'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.green, child: Text('3')),
                  label: Text('Tierney'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.purple, child: Text('6')),
                  label: Text('Gabriel M'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.amber, child: Text('12')),
                  label: Text('Saliba'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.cyanAccent, child: Text('4')),
                  label: Text('White'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.deepPurpleAccent, child: Text('34')),
                  label: Text('Xhaka'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.limeAccent, child: Text('5')),
                  label: Text('Thomas'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.tealAccent, child: Text('8')),
                  label: Text('Odegaard'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.teal, child: Text('11')),
                  label: Text('Martinelli'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.deepPurple, child: Text('14')),
                  label: Text('Nketiah'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.red, child: Text('7')),
                  label: Text('Saka'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 80.0),
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),//卡片大小
              decoration: BoxDecoration(  //背景装饰
                gradient: RadialGradient( //背景径向渐变
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98,
                ),
                boxShadow: [
                  //卡片阴影
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                  )
                ],
              ),
              transform: Matrix4.rotationZ(.2),//卡片倾斜变换
              alignment: Alignment.center, //卡片内文字居中
              child: Text(
                //卡片文字
                "5.20", style: TextStyle(color: Colors.white, fontSize: 60.0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
