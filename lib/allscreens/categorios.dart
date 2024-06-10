import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotesapp/utils/globalcategories.dart';

import 'home.dart';

class categoriescreen extends StatefulWidget {
  const categoriescreen({super.key});

  @override
  State<categoriescreen> createState() => _categoriescreenState();
}

class _categoriescreenState extends State<categoriescreen> {
  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 3),() {
    //
    // },);
    return Scaffold(
      appBar: AppBar(
        title: Text(' Categories '),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      

                      ...List.generate(
                          imagelist.length,
                              (index) => Stack(children: [
                                Container(

                                  height: 80,
                                  width: 200,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              imagelist[index]))),

                                ),
                              ]))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ' Tough Times',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          hardTimeList.length,
                          (index) => InkWell(
                                onTap: () {
                                  check = true;
                                  selectcat = hardTimeList[index]['name'];

                                  // quotemodell!.changeList(quotemodell!.catList['Love']);
                                  setState(() {});
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => homesreen(),
                                      ));
                                },
                                child: Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 140, top: 10),
                                    child: Icon(
                                      hardTimeList[index]['icon'],
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    width: 170,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                hardTimeList[index]['img']))),
                                    child: Padding(
                                        padding:
                                            EdgeInsets.only(top: 65, left: 20),
                                        child: Text(
                                          hardTimeList[index]['name'],
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ]),
                              ))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '   For you ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          forYouList.length,
                          (index) => Stack(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 140, top: 10),
                                  child: Icon(forYouList[index]['icon']),
                                ),
                                InkWell(
                                  onTap: () {
                                    check = true;
                                    selectcat = forYouList[index]['name'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => homesreen(),
                                        ));
                                  },
                                  child: Container(
                                    height: 90,
                                    width: 170,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage(imagelist[index]))),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 65, left: 20),
                                      child: Text(
                                        forYouList[index]['name'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    '   Most Popular ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          mostPopularList.length,
                          (index) => InkWell(
                                onTap: () {
                                  check = true;
                                  selectcat = mostPopularList[index]['name'];

                                  // quotemodell!.changeList(quotemodell!.catList['Love']);
                                  setState(() {});
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => homesreen(),
                                      ));
                                },
                                child: Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 140, top: 10),
                                    child: Icon(
                                      mostPopularList[index]['icon'],
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    width: 170,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                mostPopularList[index]['img']
                                                    .toString()))),
                                    child: Padding(
                                        padding:
                                            EdgeInsets.only(top: 65, left: 20),
                                        child: Text(
                                          mostPopularList[index]['name'],
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ]),
                              ))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '    general Of Category',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          generalListOfCategory.length,
                          (index) => Stack(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 140, top: 10),
                                  child: Icon(
                                      generalListOfCategory[index]['icon']),
                                ),
                                InkWell(
                                  onTap: () {
                                    check = true;
                                    selectcat =
                                        generalListOfCategory[index]['name'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => homesreen(),
                                        ));
                                  },
                                  child: Container(
                                    height: 90,
                                    width: 170,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(generalListOfCategory[index]['img']))),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 65, left: 20),
                                      child: Text(
                                        generalListOfCategory[index]['name'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '    personal  Growth',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          personalGrowthList.length,
                          (index) => Stack(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 140, top: 10),
                                  child:
                                      Icon(personalGrowthList[index]['icon']),
                                ),
                                InkWell(
                                  onTap: () {
                                    check = true;
                                    selectcat =
                                        personalGrowthList[index]['name'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => homesreen(),
                                        ));
                                  },
                                  child: Container(
                                    height: 90,
                                    width: 170,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                personalGrowthList[index]
                                                    ['img']))),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 65, left: 20),
                                      child: Text(
                                        personalGrowthList[index]['name'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool check = false;
