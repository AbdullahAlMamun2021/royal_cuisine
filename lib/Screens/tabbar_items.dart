import 'package:flutter/material.dart';
import 'package:royal_cuisine/Screens/rice_screen.dart';
class tabBar extends StatelessWidget {
  const tabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 12,
          backgroundColor: Colors.black54,
          title: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Rice",style: TextStyle(fontSize: 20,color: Colors.green),
                  textAlign: TextAlign.start,
                ),
              ),
              Tab(
                child: Text(
                  'Special Dish Menu',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.start,
                ),
              ),
              Tab(
                child: Text(
                  "Doremon Package",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RiceScreen(),
            Icon(
              Icons.directions_transit,
              size: 50,
              color: Colors.white,
            ),
            Icon(Icons.directions_car, size: 50),
            
          ],
        
        ),
    
      ),
      
    );
  }
}
