import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Text("  PIG WEIGHT\n CALCULATOR",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold)),
              Image.asset('assets/images/pig.png', height: 200, width: 300),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(

                    child: Card(
                      child: Container(

                        child: Column(
                          children: [
                            Text(" LENGHT",style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                          ],
                        ),
                        color: Colors.white,
                        width: 100,
                        height: 200,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        child: Column(
                          children: [
                            Text(" GIRTH",style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                          ],
                        ),
                        color: Colors.white,
                        width: 100,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),

              ElevatedButton(
                  onPressed: () {
                    var input = _controller.text;
                    var guess = double.tryParse(input);
                  },
                  child: Text("CALCULATE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
