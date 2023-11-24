import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './checkout.dart';
import './item.dart';
import './cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    home: Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(title: Text("home"),
          actions:<Widget> [
            Row(children: <Widget>[
              IconButton(onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Checkout();
                },));
                
              }, icon: Icon(Icons.shopping_basket_outlined)),
Padding(padding: const EdgeInsets.only(right: 10),
child: Text(cart.basketItems.length.toString()),

             ) ],)
          ],
          ),
          body: ListView.builder(
            itemCount:cart.items.length ,
            itemBuilder: (context, index) {
            return Card(child:
             
               ListTile(
                title: Text("${cart.items[index].name}"),
                trailing: IconButton(onPressed:() {
                  cart.add(cart.items[index]);
                }, icon: Icon(Icons.add)),
              )
            ,);
          },),
        );
      }
    ),
    );
  }
}

