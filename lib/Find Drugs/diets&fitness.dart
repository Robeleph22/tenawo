import 'package:flutter/material.dart';
import '../Utilites/listtiles.dart';
import 'drugCategories.dart';

class dietsfitness extends StatefulWidget {
  const dietsfitness({Key? key}) : super(key: key);

  @override
  State<dietsfitness> createState() => _dietsfitnessState();
}

class _dietsfitnessState extends State<dietsfitness> {
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
                child: Text('Diets Fitness',style: TextStyle(color: Colors.blue,fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  listtiles(image: 'Images/diets&fitness.png', title: 'Foods To Add To Your Gym Diet Plan',
                      subtitle: 'There are mainly three macronutrients that play a crucial role in maintaining bodily functions  they are carbs, proteins, and fats'
                  ),

                  listtiles(image: 'Images/diets&fitness.png', title: 'Gym Diet – Pre-Workout Foods',
                      subtitle: 'Focus on carbohydrates as all pre-workout meals or snacks to provide the body with energy to last the full session.'
                  ),

                  listtiles(image: 'Images/diets&fitness.png', title: 'Gym Diet – Post-Workout Foods',
                      subtitle: 'The purpose of post-workout nutrition is two-fold, firstly, to promote muscle recovery and secondly to replenish energy.'
                  ),

                  listtiles(image: 'Images/diets&fitness.png', title: 'Ideal 7 Day Gym Diet Chart Plan',
                      subtitle: ' 7-day gym diet plan '
                  ),

                  listtiles(image: 'Images/diets&fitness.png', title: 'Foods to Avoid in Your Gym Diet Plan',
                      subtitle: 'In the same way that proper nutrition has the potential to optimize performance and adaptation, improper nutrition can detrimentally affect progress and health. '
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
