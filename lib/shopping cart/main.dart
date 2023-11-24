
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shopping%20cart/cart.dart';
import 'package:flutter_application_1/shopping%20cart/home.dart';
import'package:provider/provider.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return Cart ();
    
    },
    child: MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "smart home",
      home: Home(),
    ),
    );
  }
}