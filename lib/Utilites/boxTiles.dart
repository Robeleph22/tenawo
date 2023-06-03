import 'package:flutter/material.dart';

class boxTiles extends StatelessWidget {
  final String text;
  final String image;
  final Color textcolor;
  const boxTiles({
    super.key,
    required this.image,
    required this.text,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: const Offset(0, 1),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(image,width: 45,height: 45),
            ImageIcon(AssetImage(image),size: 40,color: Colors.orange,),

            SizedBox(height: 10,),

            Text(text,style: TextStyle(color: textcolor,fontSize: 16,),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
