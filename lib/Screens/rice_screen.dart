import 'package:flutter/material.dart';
import 'package:royal_cuisine/model/items.dart';

class RiceScreen extends StatelessWidget {
  final riceList =[
    ItemRice("Chinese Fried Rice with Prawn", '৳ 200', "images/pizza (3).jpg"),
    ItemRice('Thai Vegetable Fried Rice', '৳ 320',"images/pizza (1).jpg"),
    ItemRice("Basil Leaf Fried Rice",'৳ 240' ,"images/pizza (4).jpg" ),
    ItemRice("Thai Fried Rice with Chicken", '৳ 260',"images/pizza (5).jpg" ),
    ItemRice( "Royal Special Fried Rice", '৳ 600' , "images/pizza (7).jpg"),
    ItemRice("Thai Fried Rice with Prawn", '৳ 720',"images/pizza (1).png" ),
    ItemRice("Chinese Fried Rice with Prawn", '৳ 200', "images/pizza (3).jpg"),
    ItemRice('Thai Vegetable Fried Rice', '৳ 320',"images/pizza (1).jpg"),
    ItemRice("Basil Leaf Fried Rice",'৳ 240' ,"images/pizza (4).jpg" ),
    ItemRice("Thai Fried Rice with Chicken", '৳ 260',"images/pizza (5).jpg" ),
    ItemRice( "Royal Special Fried Rice", '৳ 600' , "images/pizza (7).jpg"),
    ItemRice("Thai Fried Rice with Prawn", '৳ 720',"images/pizza (1).png" ),
  ];
 
  
  RiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) 
        {
 final ItemRice item =riceList.elementAt(index);
return ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.imgList),
                  fit: BoxFit.cover,
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8)),
          ),
          title: Text(
            item.titteList,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
          item.priceList,
            style: TextStyle(color: Colors.white),
          ),
        );
        },
    
        
        
        itemCount: riceList.length,
      ),
    );
  }
}
