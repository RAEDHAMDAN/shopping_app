

import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/pagehome.dart';
import 'package:flutter_application_1/contact.dart';
class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),
     body: ListView(
      children: [
        Center(
           child: Text("aboutus",style: TextStyle(fontSize: 40),
           textAlign: TextAlign.center,),
        )
      ],
     ), 
      ),
    );
  }
}