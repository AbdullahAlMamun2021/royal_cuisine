import 'package:flutter/material.dart';

class RiceScreen extends StatelessWidget {
  final titteList = [
    "Chinese Fried Rice with Prawn",
    'Thai Vegetable Fried Rice',
    "Basil Leaf Fried Rice",
    "Thai Fried Rice with Chicken",
    "Royal Special Fried Rice",
    "Thai Fried Rice with Prawn",
    "Chinese Fried Rice with Chicken",
    "Mexican Fried Rice",
    "Egg Fried Rice",
  ];
  final priceList = [
    '৳ 200',
    '৳ 320',
    '৳ 240',
    '৳ 260',
    '৳ 600',
    '৳ 720',
    '৳ 250',
    '৳ 400',
    '৳ 399',
    '৳ 599',
  ];
  final imgList = [
    "images/pizza (3).jpg",
    "images/pizza (1).jpg",
    "images/pizza (4).jpg",
    "images/pizza (5).jpg",
    "images/pizza (7).jpg",
    "images/pizza (1).png",
    "images/pizza (4).png",
  ];

  RiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ClipRRect(
          child: ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)),
            ),
            title: Text(
              titteList[index],
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              priceList[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        itemCount: [imgList, titteList, priceList][0].length,
      ),
    );
  }
}
