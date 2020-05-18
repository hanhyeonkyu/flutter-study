import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter study'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page',
      style: optionStyle
    ),
    Text(
      'Second Page',
      style: optionStyle
    ),
    Text(
      'Third Page',
      style: optionStyle
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
        _widgetOptions.elementAt(_selectedIndex)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.exposure_plus_1),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('Second')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Third'))
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: _onItemTapped,
      ),
    );
  }
}

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //       'push plus!',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headline4,
        //     ),
        //   ],
        // ),