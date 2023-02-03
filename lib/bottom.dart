import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  const bottom({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    String n="image/181.jpg";
    String m="image/182.png";
    return BottomAppBar(child: BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      BottomNavigationBarItem(icon: Image.asset(n,width: 45,),label: 'Reel'),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage(m),
          ),label: 'User'),
    ]),);
  }
}
