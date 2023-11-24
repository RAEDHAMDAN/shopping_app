import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

  

import './item.dart';
import './cart.dart';
import './home.dart';
class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar() ,
        body: Consumer<Cart>(builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.basketItems.length,
            itemBuilder: (context, index) {
            return Card(child: 
            ListTile(
            
              title: Text("${cart.basketItems[index].name}"),
              trailing: IconButton(onPressed: () {
                cart.remove(cart.basketItems[index]);
                
              }, icon:Icon(Icons.delete)),
            ),);

          },);
        },),
      ),
    );
  }

}
  