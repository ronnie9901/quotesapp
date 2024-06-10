import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splacesceen extends StatefulWidget {
  const splacesceen({super.key});

  @override
  State<splacesceen> createState() => _splacesceenState();
}

class _splacesceenState extends State<splacesceen> {
  @override

  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/home');
    },);
    return  Scaffold(
      backgroundColor: Colors.grey,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Container(
                height:714 ,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'
                  )
                )
                ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Center(
               child: Text('  ,,   Life Need    some Lesson  ,,',style: TextStyle(
                 fontSize: 45,color: Colors.white,
                 letterSpacing: 2
               ),),
             ),
           ),
              )

            ],
          ),
    );
  }
}
