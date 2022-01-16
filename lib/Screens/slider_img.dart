import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class sliderApbar extends StatelessWidget {
  const sliderApbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 170,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              CarouselSlider(
              
                  items: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          child: Image.asset(
                            'images/main.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 40,
                            left: 10,
                            child: Row(
                              children: [
                                Container(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 28,
                                    ),
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5,left: 5),
                                  child: Text(
                                    "Royal Cuisine",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  height: 40,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Container(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.info_outlined,
                                      size: 28,
                                    ),
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 60,
                            left: 10,
                            child: Container(
                              height: 20,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: lightColor.withOpacity(.7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                  ),
                                  Text("3.5"),
                                  Icon(
                                    Icons.circle_rounded,
                                    size: 10,
                                    color: Colors.black12,
                                  ),
                                  Text(
                                    "2 reviews",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 60,
                            right: 10,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [Text("\৳ 0")],
                                  ),
                                  height: 20,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 15,
                                      ),
                                      Text('30 mins')
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.accessibility,
                                        size: 18,
                                      ),
                                      Icon(Icons.directions_bike,
                                          size: 18),
                                      Icon(Icons.alarm, size: 18)
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: lightColor.withOpacity(.7),
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: kanimationDuration,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  )),
            ],
          ),
        ),
        // title: Text('Pizza',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold)),
      ),
    );
  }
}