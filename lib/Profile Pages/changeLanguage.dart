import 'package:flutter/material.dart';

import '../Profile.dart';

class changeLanguage extends StatefulWidget {
  const changeLanguage({Key? key}) : super(key: key);

  @override
  State<changeLanguage> createState() => _changeLanguageState();
}

class _changeLanguageState extends State<changeLanguage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Change Language',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.orange),),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.language,color: Colors.orange,size: 27,),
                        title: Text('English'),
                        trailing: ImageIcon(AssetImage('Images/img_16.png'),color: Colors.blue,),
                      ),

                      Divider(height: 5,color: Colors.grey.shade400,),


                        ListTile(
                          leading: Icon(Icons.language,color: Colors.orange,size: 27,),
                          title: Text('አማርኛ'),

                        ),



                      Divider(height: 5,color: Colors.grey.shade400,),

                      ListTile(
                        leading: Icon(Icons.language,color: Colors.orange,size: 25,),
                        title: Text('Afaan Oromo'),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      ListTile(
                        leading: Icon(Icons.language,color: Colors.orange,size: 27,),
                        title: Text('ትግርኛ'),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      ListTile(
                        leading: Icon(Icons.language,color: Colors.orange,size: 25,),
                        title: Text('Af Somali'),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
