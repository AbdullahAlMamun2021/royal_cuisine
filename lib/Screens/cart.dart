import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_cuisine/constants.dart';

import 'home_screen.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _currentIndex = 0;
  final ttabs = [
    HomeScreen(),
    Center(
      child: Text('home'),
    ),
    Center(
      child: Text('home'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ttabs[_currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: greenColor.withOpacity(0.2),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              '1 items ',
              style: TextStyle(color: greenColor, fontSize: 18),
            ),
            Icon(
              Icons.circle_rounded,
              size: 10,
              color: greenColor,
            ),
            Text(' ৳ 80.00', style: TextStyle(color: greenColor, fontSize: 18)),
            SizedBox(
              width: 120,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: greenColor,
                onPressed: () {},
                child: Text(
                  "View cart",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
