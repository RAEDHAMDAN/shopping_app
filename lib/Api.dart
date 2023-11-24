


import 'package:flutter/material.dart';
void main(){
  runApp(Api());
}
class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(children: [Text("rrrrrrr")]),
      ),
    );
  }
}