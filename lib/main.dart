import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theDrawer.dart';
import 'view/PersonalData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/personal',
      routes: {
        '/': (BuildContext context) => Home(),
        '/personal': (BuildContext context) => PersonalData(),
      },
    );
  }
}

class Home extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Flutter Identity'),
        leading: IconButton(
          icon: Icon(Icons.format_align_left),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: TheDrawer(context),
      body: Center(
        child: Text('Home page'),
      ),
    );
  }
}