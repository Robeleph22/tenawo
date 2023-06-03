import 'package:flutter/material.dart';
import '../Utilites/listtiles.dart';
import 'drugCategories.dart';

class Healthcaredevices extends StatefulWidget {
  const Healthcaredevices({Key? key}) : super(key: key);

  @override
  State<Healthcaredevices> createState() => _HealthcaredevicesState();
}

class _HealthcaredevicesState extends State<Healthcaredevices> {
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
                child: Text('Health Care Devices',style: TextStyle(color: Colors.blue,fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  listtiles(image: 'Images/img_15.png', title: 'Sphygmomanometer',
                      subtitle: 'Is a blood pressure monitor, or blood pressure gauge, is a device used to measure blood pressure,'
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Thermometer',
                      subtitle: 'is a device that measures temperature or a temperature gradient.'
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Catheter',
                      subtitle: 'A catheter is a thin tube made from medical grade materials serving a broad range of functions. Catheters are medical devices that can be inserted in the body to treat diseases or perform a surgical procedure. '
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Glucose meter',
                      subtitle: 'A glucose meter, also referred to as a "glucometer", is a medical device for determining the approximate concentration of glucose in the blood. '
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Pulse oximeter',
                      subtitle: 'This gadget detects the oxygen concentration in blood'
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Automated External Defibrillator',
                      subtitle: 'is a portable electronic device that automatically diagnoses the life-threatening cardiac arrhythmias of ventricular fibrillation .'
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Anaesthetic machine',
                      subtitle: ' is a medical device used to generate and mix a fresh gas flow of medical gases and inhalational anaesthetic agents for the purpose of inducing and maintaining anaesthesia.'
                  ),

                  listtiles(image: 'Images/img_15.png', title: 'Aspirator',
                      subtitle: 'is a suction machine used to remove mucus, blood, and other bodily fluids from a patient. '
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
