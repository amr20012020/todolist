import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'all_tasks.dart';
import 'completed_task.dart';
import 'in_completed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "TODO List",
              style: TextStyle(
                fontSize: 20,
                color: Colors.tealAccent,
                fontWeight: FontWeight.bold,
            ),
            ),
            centerTitle: true,
            elevation: 8,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.check_rounded,color: Colors.tealAccent,), text: 'Complete ',),
                Tab(icon: Icon(Icons.check_circle_outline,color: Colors.tealAccent,), text: 'InComplete'),
                Tab(icon: Icon(Icons.event_note_sharp,color: Colors.tealAccent,), text: 'ALL Tasks  ')
              ],),
            ),

            body: TabBarView(
              children: [
                CompletedTasks(),
                InCompleted(),
                AllTasks()
              ],
            ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context) => AddTask()
                   ));
            },
          ),
            ),
    );
  }
}
