import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/add_provider.dart';
import 'package:todolist/providers/task.dart';


class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
     bool completed = false;
     final textController = TextEditingController();
     int count = 0;
     final List<Task> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text("Add Task" , style:
        TextStyle(
            fontSize: 20,
            color: Colors.tealAccent,
            fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 5.0),
                ),
                border: InputBorder.none,
                hintText: 'Enter Your Task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Completed?",
                style: TextStyle(
                   fontWeight: FontWeight.bold,
                ),
                ),
                Checkbox(
                    value: this.completed,
                    onChanged: (value){
                      setState(() {
                        this.completed = value!;
                      });
                    }),
              ],),
            SizedBox(height: 10,),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  textController.text;
                  list.add(Task(title: textController.text,completed: completed));
                  Provider.of<AddProvider>(context,listen: false).addTask(list[count]);
                  count++;
                  print(count.toString());
                  print(completed);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add Task",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 17,
                   color: Colors.white,
                 ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
