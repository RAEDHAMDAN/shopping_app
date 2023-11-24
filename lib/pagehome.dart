import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';
class pagehome extends StatefulWidget {
  const pagehome({super.key});

  @override
  State<pagehome> createState() => _pagehomeState();
}

class _pagehomeState extends State<pagehome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView(children: [
          Center(
            child: Text("homebage",style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center),
            
          ),

          Container(
            
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: MaterialButton(color: Color.fromARGB(255, 189, 233, 30),
            textColor: Colors.white,
              onPressed: () {
              Navigator.of(context).pushNamed("contact");
            },
            child: Text('go to page about'),
            ),
          ),
          
          Container(
            
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: MaterialButton(color: const Color.fromARGB(255, 30, 233, 172),
            textColor: Colors.white,
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>aboutus()),);            },
            child: Text('go to CONTACT'),
            ),
          )
        ]),

      ),
      
    );
  }
}