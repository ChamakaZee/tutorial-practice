import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter tutorial 08"),
      ),
      body: Container(
       // margin: EdgeInsets.all(20.0),
       // padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
     //  transform: Matrix4.rotationZ(0.2),
        height: 200.0,
        width: double.infinity,
        alignment: Alignment.bottomRight,
        color: Colors.pink,
        child: Text("im chamaka medasa Athukorala",style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}
