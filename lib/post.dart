import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
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
    return ListView.builder(itemCount:S.length,itemBuilder: (context, index) {
      return Column(children:[
        ListTile(
          leading:Container(
            height: 50,
            width: 50,

            decoration: BoxDecoration(
              border: Border.all(),
              shape: BoxShape.circle,
              image: DecorationImage(fit: BoxFit.cover ,image: AssetImage("${S[index]}"),
              ),
            ),
          ),
          title: Text("Nikunj"),
          subtitle: Text("Surat,Gujarat"),
          trailing: IconButton(onPressed: null, icon: Icon(Icons.more_vert)),
        ),
        Container(
          height: 280,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover ,image: AssetImage("${S[index]}"),
            ),
          ),
        ),
        ListTile(
          leading: Wrap(
            spacing: 10,
            children: [
              Icon(Icons.favorite_border,color: Colors.black,size: 32,),
              Icon(Icons.messenger_outline,color: Colors.black,size: 32,),
              Icon(Icons.share_outlined,color: Colors.black,size: 32,)
            ],
          ),
          trailing:  Icon(Icons.bookmark_add_outlined,size: 32,
          color: Colors.black,),
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text('500 Likes',style: TextStyle(fontWeight: FontWeight.w700),),
            ),

          ],
        ),
      Row(
      children: [
      Padding(padding: EdgeInsets.only(left: 10),
      child: Text('It starts with you.',style: TextStyle(fontWeight: FontWeight.w700),),
      ),
      ],),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text('Add comment',style: TextStyle(fontWeight: FontWeight.w700),),
            ),
          ],),
      ],
      );
    },);
  }
}
