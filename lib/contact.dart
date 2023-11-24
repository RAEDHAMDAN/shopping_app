import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact ({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact > {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),
        body: ListView(
          children: [
            Center(
               child: Text("contact",style: TextStyle(fontSize: 40),),
            ),
                Container(
            padding: EdgeInsets.all(20),
            child: MaterialButton
            (color: Colors.blue,
              onPressed: () {
              Navigator.of(context).pushReplacementNamed("about");
            },
            child: Text('go to aboutus'),
            ),
          )
          ],
        ),
      ),
    );
  }
}