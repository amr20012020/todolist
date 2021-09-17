import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/add_provider.dart';

class InCompleted extends StatelessWidget {
  const InCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AddProvider>(
      builder: (context, key, child) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: key.basketItems.length == 0
                ?
            Center(
              child:Text(' no items in your Schedule',style: TextStyle(fontSize: 25,color: Colors.tealAccent,fontWeight: FontWeight.bold)),
            )
                : ListView.builder(
              itemCount: key.basketItems.length,
              itemBuilder: (context, index) {
                return  Card(
                  child:key.basketItems[index].completed?null: ListTile(
                    title:key.basketItems[index].completed?null:Text(key.basketItems[index].title,style: TextStyle(fontSize: 20,color: Colors.tealAccent,fontWeight: FontWeight.bold)
                    ),
                    trailing: key.basketItems[index].completed?null:Icon(Icons.check_circle_outline,color: Colors.tealAccent,),

                  ),
                );

              },
            ));
      },
    );
  }
}
