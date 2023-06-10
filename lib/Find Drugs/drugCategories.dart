import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenawo/Dashboard.dart';
import 'package:tenawo/Find%20Drugs/Beauty.dart';
import 'package:tenawo/Find%20Drugs/Healthcaredevices.dart';
import 'package:tenawo/Find%20Drugs/Kids.dart';
import 'package:tenawo/Find%20Drugs/drugs.dart';
import 'package:tenawo/Find%20Drugs/vitamins.dart';

import '../Utilites/boxTiles.dart';
import 'allDrugs.dart';
import 'diets&fitness.dart';

class drugCategories extends StatefulWidget {
  const drugCategories({Key? key}) : super(key: key);

  @override
  State<drugCategories> createState() => _drugCategoriesState();
}

class _drugCategoriesState extends State<drugCategories> {
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
                          Navigator.of(context, rootNavigator: false).push(CupertinoPageRoute(builder: (context) => Dashboard()));
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
                  child: Text('Drug Categories',style: TextStyle(color: Colors.blue,fontSize: 18),),
                ),
              ),



              SizedBox(height: 25,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => allDrug()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/img.png',
                          text: 'All Drugs',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child:GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => drugs()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/drugs2.png',
                          text: 'Drugs',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => beauty()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/Beauty2.png',
                          text: 'Beauty',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => kids()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/baby.png',
                          text: 'Baby Kids',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Healthcaredevices()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/img_15.png',
                          text: 'Health care Device',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => dietsfitness()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/diets&fitness.png',
                          text: 'Diets & Fitness',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => vitamins()));
                      },
                      child: Container(
                        child: boxTiles(
                          image: 'Images/vitamins.png',
                          text: 'Vitamins & Supplement',
                          textcolor: Colors.black87,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(),
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
