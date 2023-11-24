import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/contact.dart';
import 'package:flutter_application_1/pagehome.dart';
void main(){
  runApp(Myaap());
}
class Myaap extends StatefulWidget {
  const Myaap({super.key});

  @override
  State<Myaap> createState() => _MyaapState();
}

class _MyaapState extends State<Myaap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home":(context)=>pagehome(),
        "about":(context) =>  aboutus(),
        "contact":(context)=>Contact()
      },
      home:aboutus(),
    );
  }
}