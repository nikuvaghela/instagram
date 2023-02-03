import 'package:flutter/material.dart';

class story extends StatefulWidget {
  const story({Key? key}) : super(key: key);

  @override
  State<story> createState() => _storyState();
}

class _storyState extends State<story> {
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(S.length, (index){
                return  Container(
                  width: 67,
                  height: 67,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(begin: Alignment.topCenter,
                        end : Alignment.bottomCenter, colors: [Color(0xFFEC407A),Color(0xFFE7600B)]
                    ),
                  ),
                  child: Container(
                    height: 65,
                    width: 65,

                    decoration: BoxDecoration(
                        color: Colors.white,

                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color:  Colors.grey,spreadRadius: 1),]),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(

                            shape: BoxShape.circle,

                            image: DecorationImage(fit: BoxFit.cover,image: AssetImage("${S[index]}"))
                        ),
                      ),
                    ),
                  ),
                );
              } ,
              ),
            ),
          ),
        ),



      ],

    );
  }
}

