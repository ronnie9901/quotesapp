import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotesapp/allscreens/thiemepage.dart';
import 'package:quotesapp/utils/globalcategories.dart'; // Ensure this file contains definitions for `list` and `categories`

import '../utils/global.dart';
import 'categorios.dart';
import 'fav.dart';

Quotemodel? quotemodell;

class homesreen extends StatefulWidget {
  const homesreen({super.key});

  @override
  State<homesreen> createState() => _homesreenState();
}

class _homesreenState extends State<homesreen> {
  @override
  void initState() {
    quotemodell = Quotemodel();
    for (String i in categories) {
      quotemodell!.convertToList(list[i]);
    }
    quotemodell!.generateMap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c1,
      body: Column(
        children: [
          Container(
            height: 714,
            width: double.infinity,
            decoration: BoxDecoration(
              color: c1,
              image: DecorationImage(
                image: AssetImage(imgbg),
                fit: BoxFit.cover,
              ),
            ),
            child: PageView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
                ...List.generate(
                  check
                      ? quotemodell!.catList[selectcat].length
                      : quotemodell!.quotemodelList.length,
                  (index) => Container(
                    child: Center(
                      child: ListTile(
                        title: SelectableText(
                          check
                              ? quotemodell!.catList[selectcat][index].quote!
                              : quotemodell!.quotemodelList[index].quote!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: c1,
                          ),
                        ),
                        subtitle: SelectableText(
                          check
                              ? quotemodell!.catList[selectcat][index].author!
                              : quotemodell!.quotemodelList[index].author!,
                          style: TextStyle(
                            fontSize: 20,
                            color: c1,
                          ),
                        ),
                        trailing: Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (check) {
                                      fav.add(quotemodell!.catList[selectcat]
                                          [index]);
                                    } else {
                                      fav.add(
                                          quotemodell!.quotemodelList[index]);
                                    }
                                  });
                                  Navigator.of(context).pushNamed('/fav');
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {});
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ...List.generate(
                                      colorlist.length,
                                      (index) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectindex = index;
                                                c1 = colorlist[selectindex];
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: colorlist[index],
                                                  shape: BoxShape.circle),
                                            ),
                                          ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      CupertinoIcons.arrow_up_square,
                      color: Colors.white,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      Navigator.of(context).pushNamed('/cate');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          ' Catego',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/theme');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          ' theme',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.theaters,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          ' setting ',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Quotemodel {
  String? quote;
  String? author;

  Quotemodel({this.quote, this.author});

  List quotemodelList = [];

  Map catList = {};

  factory Quotemodel.fromquote(Map m1) {
    return Quotemodel(author: m1['author'], quote: m1['quote']);
  }

  void convertToList(List l1) {
    quotemodelList.addAll(l1.map((e) => Quotemodel.fromquote(e)).toList());
  }

  void generateMap() {
    for (String i in categories) {
      catList[i] = list[i].map((e) => Quotemodel.fromquote(e)).toList();
    }
  }

  void changeList(List list) {
    quotemodelList = list;
    print(quotemodelList);
  }
}

List<Quotemodel> fav = [];
int selectindex = 0;
String imgbg = 'assets/affirmatiom/image6.jpeg';
String selectcat = '';
bool istrue = true;
