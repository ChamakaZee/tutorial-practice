import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
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

  //TextEditingController title = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    //title.text="give your phone number";

    return Scaffold(
      appBar: AppBar(
        title: Text("tutorial 13"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  hintText: "enter your phone number",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){

                    },
                  ),
                ),
                maxLength: 10,
                autofocus: true,
              //  obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22.0),
               // onChanged: (text){
              //    print(text);
              //  },
               // onSubmitted: (text){
                //  print(text);
                //},
                //controller: title,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                //  obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22.0),
               // enabled: false,
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
