
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_cuisine/Screens/first_screen.dart';
import 'package:royal_cuisine/Screens/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
      routes: {
        "/Second":(context)=>Cart(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black
        ),
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: Cart(),
    );
  }
}
