import 'package:flutter/material.dart';
import 'package:flutter_application_1/shopping cart/item.dart';

class Cart extends ChangeNotifier{

   List <Item> items = [
    Item(name:"iphon 11 pro max", price: 1000),
     Item(name:"iphon 12", price: 1100),
      Item(name:"iphon 13 pro ", price: 1200),
       Item(name:"iphon 14 pro ", price: 1300),
        Item(name:"redmi 10", price: 150),
         Item(name:"s22 ultra", price: 1500),
  ];
  List<Item> _items = [];
  double price =0.0;
  void add (Item item){
    _items.add(item as Item);
    price +=item.price!;
    notifyListeners();
  }
   void  remove (Item item){
    _items.remove(item);
    price -=item.price!;
    notifyListeners();
  }
  int get count{
    return _items.length;
  }
  double get totalprice{
    return price;
  } 
  List<Item> get basketItems{
    return _items;

  }

}
