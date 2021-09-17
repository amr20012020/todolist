import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/add_provider.dart';
import 'package:todolist/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AddProvider>(create: (context) => AddProvider()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

