import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class favscreen extends StatefulWidget {
  const favscreen({super.key});

  @override
  State<favscreen> createState() => _favscreenState();
}

class _favscreenState extends State<favscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(' favorites'),
      ),
      body: ListView.builder(
        itemCount: fav.length,
        itemBuilder: (context, index) {
          return Card(

           shadowColor: Colors.black,
            child: ListTile(
              title: SelectableText(
                fav[index].quote! ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: SelectableText(
                fav[index].author!,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

