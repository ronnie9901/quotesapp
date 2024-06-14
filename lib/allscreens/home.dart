import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:quotesapp/allscreens/shere.dart';
import 'package:quotesapp/utils/globalcategories.dart';
import 'package:google_fonts/google_fonts.dart'; // Ensure this file contains definitions for `list` and `categories`
import '../utils/global.dart';
import 'categorios.dart';

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
      body: Container(
        height: 714.6,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: SelectableText(
                          check
                              ? quotemodell!.catList[selectcat][index].quote!
                              : quotemodell!.quotemodelList[index].quote!,
                          style: GoogleFonts.getFont(font,
                              color: c1, fontSize: 20),
                        ),
                        subtitle: SelectableText(
                            check
                                ? quotemodell!.catList[selectcat][index].author!
                                : quotemodell!.quotemodelList[index].author!,
                            style: GoogleFonts.getFont(font,
                                color: c1, fontSize: 20)),
                        trailing: InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(
                                text: check
                                    ? quotemodell!
                                        .catList[selectcat][index].quote!
                                    : quotemodell!.quotemodelList[index].quote!,
                              ));
                            },
                            child: Icon(
                              Icons.copy,
                              color: c1,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (check) {
                                          fav.add(quotemodell!
                                              .catList[selectcat][index]);
                                        } else {
                                          fav.add(quotemodell!
                                              .quotemodelList[index]);
                                        }
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text('added in favorites ')));
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: c1,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    onPressed: () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => shere(
                                                quote: check
                                                    ? quotemodell!
                                                        .catList[selectcat]
                                                            [index]
                                                        .quote!
                                                    : quotemodell!
                                                        .quotemodelList[index]
                                                        .quote!,
                                                author: check
                                                    ? quotemodell!
                                                        .catList[selectcat]
                                                            [index]
                                                        .author!
                                                    : quotemodell!
                                                        .quotemodelList[index]
                                                        .author!,
                                                img: imgbg),
                                          ));
                                    },
                                    icon: Icon(
                                      Icons.save,
                                      color: c1,
                                    )),
                                IconButton(
                                    onPressed: () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => shere(
                                                quote: check
                                                    ? quotemodell!
                                                        .catList[selectcat]
                                                            [index]
                                                        .quote!
                                                    : quotemodell!
                                                        .quotemodelList[index]
                                                        .quote!,
                                                author: check
                                                    ? quotemodell!
                                                        .catList[selectcat]
                                                            [index]
                                                        .author!
                                                    : quotemodell!
                                                        .quotemodelList[index]
                                                        .author!,
                                                img: imgbg),
                                          ));
                                    },
                                    icon: Icon(
                                      Icons.share,
                                      color: c1,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
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
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '   font color',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  ),
                                  Text(
                                    '  font style',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ...List.generate(
                                        fontFamilyList.length,
                                        (index) => Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.all(10),
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                font = fontFamilyList[index];
                                              });
                                            },
                                            child: Text(' Aa',
                                                style: GoogleFonts.getFont(
                                                    fontFamilyList[index],
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      CupertinoIcons.arrow_up_square,
                      color: c1,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildRow(context),
          ],
        ),
      ),
    );
  }

  Row buildRow(BuildContext context) {
    return Row(
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
                  CupertinoIcons.rectangle_grid_2x2,
                  color: Colors.white,
                  size: 15,
                ),
                Text(
                  '   Cat',
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
                  CupertinoIcons.paintbrush,
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
            onPressed: () {
              Navigator.of(context).pushNamed('/mode');
            },
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.settings,
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
