import 'package:flutter/material.dart';

class listtiles extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const listtiles({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ImageIcon(AssetImage(image),size: 32,color: Colors.orange,),
          title: Text(title,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward,color: Colors.orange,),
        ),
        Divider(thickness:1,color: Colors.blue,indent: 70),
      ],
    );
  }
}