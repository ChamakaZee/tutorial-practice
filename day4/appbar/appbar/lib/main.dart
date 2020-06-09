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
      debugShowCheckedModeBanner: false,
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          leading: IconButton(
              icon: Icon(Icons.menu),
          onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ],
          flexibleSpace: Image.asset("assests/pexels-photo-949587.jpeg",fit: BoxFit.cover,
          ),
          bottom:TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: "car",),
              Tab(icon: Icon(Icons.directions_transit),text: "transit",),
              Tab(icon: Icon(Icons.directions_bike),text: "bike",),
            ],
          ),
          elevation: 5.5,
         // backgroundColor: Colors.black26,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1(){
  return Container(
    child: Center(
      child: Text("test"),
    ),
  );
}