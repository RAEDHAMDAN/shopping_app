import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  ChangeNotifierProvider(
      create: (context) => prevone(),
      child: Scaffold(
        appBar: AppBar(title: Text('providers')),
        body:ListView(children:<Widget> [
        Selector<prevone,int>
        (
          selector: (context,provs1)=> provs1.showone,
        builder: (context, prevone, child) {
          print("selector text1");
        
          return  Text("${prevone}");
          
        },) ,

          Selector<prevone,String>(
             selector: (context,provs1)=> provs1.showtwo,
        builder: (context, prevone, child) {
          print(" consumer text2");
        
          return  Text(prevone);
          
        },) ,
          Consumer<prevone>
        (builder: (context, prevone, child) {
          
        
          return MaterialButton(
            color:Colors.blue ,
            onPressed: () {
              prevone.dosomthing1();
            },child: Text("do somthing1"),
            );
          
        },) ,
        SizedBox(height: 15,),

         Consumer<prevone>(
        builder: (context, prevone, child) {
          
        
          return MaterialButton(
            color:Colors.blue ,
            onPressed: () {
              prevone.dosomthing2();
            },child: Text("do somthing2"),
            );
        },),
        ],) 
      ),
    ),) ;
  }
}

class prevone extends ChangeNotifier{
  var showsomthing1= 1;
    var showsomthing2= "showsomething";

    get showone => showsomthing1;
    get showtwo => showsomthing2;
dosomthing1(){
  showsomthing1++;
  notifyListeners();
}
dosomthing2(){
  showsomthing2="yessssssssssss provider";
}
    notifyListeners();

  }
