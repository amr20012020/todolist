import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/add_provider.dart';

class CompletedTasks extends StatelessWidget {
  const CompletedTasks({Key? key}) : super(key: key);

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
                return Card(
                  child: key.basketItems[index].completed?ListTile(
                    title:key.basketItems[index].completed?Text(key.basketItems[index].title,style: TextStyle(fontSize: 17,color: Colors.tealAccent,fontWeight: FontWeight.bold)):null,

                    trailing: key.basketItems[index].completed?Icon(Icons.check_rounded,color: Colors.tealAccent,):null,

                  ):null,
                );

              },
            ));
      },
    );
  }
}
