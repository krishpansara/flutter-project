import 'package:flutter/material.dart';
// import 'models/product.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Instagram'),
      ),
      body: cartItem()          
    );
    
  }
  Widget cartItem(){
  return Card(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height:20,
              width:20,
              color:Colors.deepPurple,
            ),
            Text("Username", style:TextStyle(fontSize: 10,),),
            Text(":"),
          ],
        ),
        Container(
          height:500,
          width:500,
          color:Colors.amber,
        ),
        Row(children: [
            Text("Like", style:TextStyle(fontSize: 10,),),
            Text("Comment", style:TextStyle(fontSize: 10,),),
            Text("Share", style:TextStyle(fontSize: 10,),),
            Text("Save", style:TextStyle(fontSize: 10,),),
        ],)
      ],
    ),
  );
  
  }
}