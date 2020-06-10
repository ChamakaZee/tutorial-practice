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
        primarySwatch: Colors.blue,
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
        backgroundColor: Colors.pink,
        title: Text("flutter tutorial 09"),
      ),
      body: Container(
        color: Colors.orange,
        height: 300,
        child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //  crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("text 1",style: TextStyle(fontSize:20.0 ),),
            Text("text 1",style: TextStyle(fontSize:20.0 ),),
            Text("text 1",style: TextStyle(fontSize:20.0 ),),
            Column(
              children: <Widget>[
                Text("text 1",style: TextStyle(fontSize:20.0 ),),
                Text("text 1",style: TextStyle(fontSize:20.0 ),),
                Text("text 1",style: TextStyle(fontSize:20.0 ),),
              ],
            ),
            Text("text 4",style: TextStyle(fontSize:20.0 ),),
          ],
        ),
      ),
    );
  }
}
