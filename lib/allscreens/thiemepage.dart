import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotesapp/allscreens/home.dart';
import 'package:quotesapp/utils/globalcategories.dart';

class themesrceen extends StatefulWidget {
  const themesrceen({super.key});

  @override
  State<themesrceen> createState() => _themesrceenState();
}

class _themesrceenState extends State<themesrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' theme page'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(' Background color  ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
          
                    ...List.generate(colorlist.length, (index) => InkWell(
                      onTap: () {
                        setState(() {
                          c1= colorlist[index];
                        });
                        Navigator.of(context).pushNamed('/home');
                      }, child: Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            color: colorlist[index],
                        )
                    ),
                    )),
          
                  ],
                ),
              ),
              Row(
                children: [
                  Text(' Affirmation ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
          
                    ...List.generate(5, (index) => InkWell(
                     onTap: () {
          
                       setState(() {
                         imgbg = imagelist[index];
                       });
          
                       Navigator.of(context).pushNamed('/home');
          
                     }, child: Container(
                        margin: EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                               color: Colors.black12,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(
                                   imagelist[index]
                                  )
                              )
                          )
                      ),
                    )),
          
                  ],
                ),
              ),
              Row(
                children: [
                  Text(' most favorites',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
          
                    ...List.generate(imagelist2.length, (index) => InkWell(
                      onTap: () {
          
                        setState(() {
                          imgbg =imagelist2[index];
                        });
                        Navigator.of(context).pushNamed('/home');
          
                      }, child: Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    imagelist2[index]
                                )
                            )
                        )
                    ),
                    )),
          
                  ],
                ),
              ),
              Row(
                children: [
                  Text(' all type photos  ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
          
                    ...List.generate(imagelis3.length, (index) => InkWell(
                      onTap: () {
          
                        setState(() {
                          imgbg = imagelis3[index];
                        });
          
                        Navigator.of(context).pushNamed('/home');
          
                      }, child: Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    imagelis3[index]
                                )
                            )
                        )
                    ),
                    )),
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Color  c1 =Colors.white;
List colorlist=[
  Colors.tealAccent,
  Colors.black,
  Colors.yellow,
  Colors.pink,
  Colors.grey,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.pinkAccent,
  Colors.blue,



];
