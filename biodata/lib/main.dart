import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata',
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Card(
        margin: EdgeInsets.all(20),
        elevation: 100,
        
        child: ListView(

      children: <Widget>[ Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container( margin: EdgeInsets.fromLTRB(0, 30, 0, 0),child:Text("Biodata Diri ",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),Center(

              child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ],
                      borderRadius: BorderRadius.circular(300.0),
                      border: Border.all(color: Colors.white, width: 2.5)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image.network(
                      "https://lh3.google.com/u/0/d/1xPbJfjE9A2UyHG3Ozw0DX1jalz8UVkdy=w2000-h1326-iv1"
                    )
                  )
                )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(width: 30,height:10),
              Text('Nama                            : Nadya Merdeka Wati  '),
              Text('Tempat, tanggal lahir   : Bandarlampung, 16 Agustus 1999 '),
              Text('NPM                             : 1715061010  '),
              Text('Telpon                          : 0895411455789 '),
              Text('Email                           : merdekanadya@gmail.com '),
              Text('Alamat                          : Jl. Abdul Mutholib No.12'),


            ],
          )
        ],
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        ),]),),
    );
  }
}
