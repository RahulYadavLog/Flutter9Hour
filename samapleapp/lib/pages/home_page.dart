import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

final int day=30;
final String name="Rahul";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body:
     Center(child: 
    Container(child: 
    Text("$day Day flutter dsg cource  $name"),
    ),

    ),
    drawer: Drawer(),
    );

  }
}