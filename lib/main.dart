import 'package:flutter/material.dart';

import 'get_started_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',


      ),
      home: MyApp()));
}
class MyApp extends StatefulWidget {
@override
_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));



    });


    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 173, 198),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo.png"), fit: BoxFit.contain)),
      ),
    );
  }
}


