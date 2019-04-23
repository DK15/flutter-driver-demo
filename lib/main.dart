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
              TextField(
                key: Key('passKeyString'),
                decoration: InputDecoration(
                  hintText: 'Enter Password Here',
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                  key: Key('button'),
                  child: Text('Login'),
                  onPressed: ()
    {
    //  _showDialog();
    Navigator.push(
    context, MaterialPageRoute(
    builder:
    (context) => NextScreen()));
    }
                    )
    )
    ]
    )
    )
    );// This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          key: Key('alertDialog'),
          title: Text('Login', key: Key('AlertTitle'),),
          content: Text('Login successful', key: Key('AlertBody'),),
          actions: <Widget>[
            FlatButton(
              key: Key('alertButton'),
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        key: Key('nextScreenKey'),
        title: Text('Next Screen'),
      ),
    );
  }
}
