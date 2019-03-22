import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              TextField(
                key: Key('inputKeyString'),
                decoration: InputDecoration(
                  hintText: 'Enter Text Here',
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                  key: Key('button'),
                  child: Text('Click Here'),
                  onPressed: () {},
                )
              )
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('Scroll till here', key: Key('text'), style: TextStyle(
                  fontSize: 18.0
              ),
              )
            )
          ],
        ),
      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
