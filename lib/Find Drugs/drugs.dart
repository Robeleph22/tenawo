import 'package:flutter/material.dart';
import '../Utilites/listtiles.dart';
import 'drugCategories.dart';

class drugs extends StatefulWidget {
  const drugs({Key? key}) : super(key: key);

  @override
  State<drugs> createState() => _drugsState();
}

class _drugsState extends State<drugs> {
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
                child: Text('Drugs',style: TextStyle(color: Colors.blue,fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  listtiles(image: 'Images/drugs2.png', title: 'Abilify ',
                      subtitle: 'Abilify is used to treat the symptoms of psychotic conditions including schizophrenia in adults and children at least 13 years old.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Abilify Maintena',
                      subtitle: 'treatment of schizophrenia in adults maintenance treatment of bipolar I disorder in adults'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Abiraterone ',
                      subtitle: 'is used together with steroid medication (prednisone or methylprednisolone) to treat prostate cancer that has spread to other parts of the body.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Bacitracin topical',
                      subtitle: 'Bacitracin topical (for the skin) is used to prevent infection in minor cuts, scrapes, and burns'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Baclofen',
                      subtitle: 'Is used to treat certain types of spasticity (muscle stiffness and tightness) and muscle pain in people with multiple sclerosis or a spinal cord injury or other spinal cord diseases.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Bactrim',
                      subtitle: 'Bactrim is a prescription medicine used to treat ear infections, urinary tract infections, bronchitis, travelers diarrhea, shigellosis, and Pneumocystis jiroveci pneumonia.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Cabenuva',
                      subtitle: 'Cabenuva is a prescription medicine that is used without any other antiviral medicines to treat HIV. Cabenuva is not a cure for HIV or AIDS.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Cabometyx',
                      subtitle: 'Cabometyx is used to treat liver cancer (hepatocellular carcinoma) in people who have been previously treated with sorafenib.'
                  ),

                  listtiles(image: 'Images/drugs2.png', title: 'Calcium carbonate',
                      subtitle: 'Calcium carbonate is used to prevent or to treat a calcium deficiency.'
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
