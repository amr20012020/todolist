
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:todolist/providers/task.dart';

class AddProvider with ChangeNotifier{

  final List<Task> list = [];

  void addTask(Task item){
    list.add(item);
    notifyListeners();
  }

  int get count {
    return list.length;
  }

  List<Task> get basketItems {
    return list;
  }


}