// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 100;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title:Text("My First App"),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,// is any other widget is addded the older one gets pushed up
        children: [
          Text("Hello Welcome to my App",
            style:TextStyle(
            fontSize: 50,
              fontWeight: FontWeight.bold
          ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,//try the different types of styles
              children: [
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.white,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 250,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  // height.round().toString(),
                  "height = ${height.round()}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Slider(value: height,min: 50,max: 200, onChanged: (value){
                  setState(
                      (){
                        height=value;
                      }
                  );
                })
              ],
            ),
          )
        ],
      ),);
  }
}

