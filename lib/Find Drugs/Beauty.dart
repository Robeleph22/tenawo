import 'package:flutter/material.dart';
import '../Utilites/listtiles.dart';
import 'drugCategories.dart';

class beauty extends StatefulWidget {
  const beauty({Key? key}) : super(key: key);

  @override
  State<beauty> createState() => _beautyState();
}

class _beautyState extends State<beauty> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => drugCategories()));
                      },
                          icon: Icon(Icons.arrow_back,color: Colors.blue,)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.blue,)),
                    TextButton(onPressed: () {}, child: Text('አማ',style: TextStyle(color: Colors.blue, fontSize: 17)))
                  ],
                )
              ],
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Beauty',style: TextStyle(color: Colors.blue,fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  listtiles(image: 'Images/Beauty2.png', title: 'ABronzTail The One Tan',
                      subtitle: 'ABronzTail The One Tan + Tone Whipped Tanning Mousse is a sunless tanner that gives you a gorgeous, cool bronze.'
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'MAC MACStack Mascara with Superstack Mega Brush',
                      subtitle: 'Stack on infinite layers of volume + length with MACStack Mascara. '
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'MAC Cosmetics Studio Fix Fluid Foundation ',
                      subtitle: 'This modern foundation combines a matte finish and medium-to-full buildable coverage. '
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'Lacoste Essential Men - Eau De Toilette Spray',
                      subtitle: 'Essential by Lacoste is a woody aromatic scent more suited to the younger man. '
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'Lacoste Touch Of Pink Ladies Eau de Toilette Spray ',
                      subtitle: 'Touch Of Pink by Lacoste is a liberating fragrance that makes you feel free!'
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'Gucci Guilty Black Ladies Eau De Toilette Spray',
                      subtitle: 'Gucci Guilty Black is a seductive scent that opens with red berries and pink pepper, features floraly sweet middle notes, and a spicy base of patchouli and amber.'
                  ),

                  listtiles(image: 'Images/Beauty2.png', title: 'Gucci Guilty Black Ladies Eau De Toilette Spray',
                      subtitle: 'Gucci Guilty Black is a seductive scent that opens with red berries and pink pepper, features floraly sweet middle notes, and a spicy base of patchouli and amber.'
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
