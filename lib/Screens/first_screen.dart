import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_cuisine/Screens/rice_screen.dart';
import 'package:royal_cuisine/Screens/slider_img.dart';
import 'package:royal_cuisine/Screens/tabbar_items.dart';

import '../constants.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          sliderApbar(),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: size.height * .9,
                width: double.infinity,
                child: tabBar(),
              );
            },
          )),
          // Container(color: Colors.orange,height: 20,width: 250,)
        ],
      ),
    );
  }
}



