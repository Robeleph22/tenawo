import 'package:flutter/material.dart';
import 'package:tenawo/Utilites/boxTiles.dart';

import 'Find Drugs/drugCategories.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView( 
          child: Column(
            children: [

              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.blue,)),
                      TextButton(onPressed: () {}, child: Text('አማ',style: TextStyle(color: Colors.blue, fontSize: 17)))
                    ],
                  )
                ],
              ),

              SizedBox(height: 20,),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'Welcome Back,  ',style: TextStyle(color: Colors.black87,fontSize: 18)),
                      TextSpan(text: 'Robel Ephrem',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.w500)),
                    ]
                  )),
                ),
              ),

              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Our Services',style: TextStyle(color: Colors.blue,fontSize: 18),),
                ),
              ),



              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => drugCategories()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/img.png',
                          text: 'Find Drugs',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_1.png',
                        text: 'Doctors',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),


                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_2.png',
                        text: 'Find Hospital',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_3.png',
                        text: 'Find Clinic',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_4.png',
                        text: ' Find Home Care',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_5.png',
                        text: 'Find laboratory',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_6.png',
                        text: ' Find Ambulance',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_7.png',
                        text: 'Find Medical Wholesalers',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_8.png',
                        text: ' Find Pharmaceutical Wholesalers',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_9.png',
                        text: 'Find Diagnostic Imagining centers',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_10.png',
                        text: ' Find Oxygen plants',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_11.png',
                        text: 'Find Agencies & Insurance',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/plane2 (1).png',
                        text: ' Find Medical Tourism',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child: boxTiles(
                        image: 'Images/img_13.png',
                        text: 'Find Medical & Health Education',
                        textcolor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
