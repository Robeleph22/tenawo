import 'package:flutter/material.dart';
import 'package:tenawo/Utilites/listtiles.dart';
import 'drugCategories.dart';

class allDrug extends StatefulWidget {
  const allDrug({Key? key}) : super(key: key);

  @override
  State<allDrug> createState() => _allDrugState();
}

class _allDrugState extends State<allDrug> {
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
                child: Text('All Drug',style: TextStyle(color: Colors.blue,fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  listtiles(image: 'Images/img.png', title: 'Aciclovir (Zovirax)',
                      subtitle: 'Treats cold sores, chickenpox, shingles and other herpes virus infections'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Acrivastine',
                      subtitle: 'Acrivastine is an antihistamine medicine that helps the symptoms of allergies.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Alogliptin',
                      subtitle: 'Alogliptin is a medicine used to treat type 2 diabetes.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Baclofen',
                      subtitle: 'Its used to relieve muscle spasms cramping or tightness caused by conditions such as cerebral palsy meningitis'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Betahistine',
                      subtitle: 'Betahistine is a medicine used to treat the symptoms of Ménières disease.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Bisacodyl',
                      subtitle: 'Bisacodyl is a laxative. This type of medicine can help you empty your bowels if you have constipation (difficulty pooing).'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Carvedilol',
                      subtitle: 'Carvedilol is a beta blocker.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Carbimazole',
                      subtitle: 'Carbimazole is a medicine used to treat an overactive thyroid (hyperthyroidism). This is when your thyroid gland makes too many thyroid hormones.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Chlorhexidine',
                      subtitle: 'Chlorhexidine is an antiseptic and disinfectant. It helps reduce the number of germs (bacteria) in your mouth or on your skin.'
                  ),

                  listtiles(image: 'Images/img.png', title: 'Diclofenac',
                      subtitle: 'Diclofenac is a medicine that reduces swelling (inflammation) and pain.'
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
