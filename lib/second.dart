

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prc1/bottom.dart';
import 'package:prc1/post.dart';
import 'package:prc1/story.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<dynamic> S =['image/11.jpg',
    'image/122.jpg',
    'image/133.jpg',
    'image/144.jpg',
    'image/155.jpg',
    'image/166.jpg',
    'image/11.jpg',
    'image/122.jpg',
    'image/133.jpg',
    'image/144.jpg',
    'image/155.jpg',
    'image/166.jpg'];

  @override

  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: bottom(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Instagram",style: TextStyle(decoration: TextDecoration.none,fontFamily: 'Billabong',fontSize: 30),),
        actions: [
         IconButton(onPressed: () {

         }, icon: Icon(Icons.favorite_border)),
          SizedBox(width: 10),
          Icon(Icons.message_rounded),
          SizedBox(
            width: 10,
          ),
        ],

      ),
      body: Column(
        children: [
            story(),
            Divider(color: Colors.grey,),
            Expanded(child: post(),)


      ],)



      );
  }
}
