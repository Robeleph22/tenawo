import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tenawo/Profile.dart';
import 'package:tenawo/servicetile.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Services We Provide',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.orange),),
                        // Lottie.network('https://assets6.lottiefiles.com/packages/lf20_w9exmcol.json',width: 75,height: 75),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online Private Hospitals',
                  logo: 'Images/tenawologo.png',
                  text: 'Managing appointments with hospitals and clinics in a manner'
              ' thats quite feasible to our clients.And make sure their desired'
                ' healthcare facilities address is given.'),


              SizedBox(height: 15,),

              serviceTile(
                  title: 'Ordering Your prescription drugs online',
                  logo: 'Images/tenawologo.png',
                  text: 'By simply using our website and application or our call center '
                      '(9456), you will be able to get your prescribed drugs and we can help '
                      'find drug stores/ pharmacies within 500 m radius.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: "We are conducted in enabling our clients to have access"
                      " to different examination options like laboratories and "
                      "pathology including their lists, appointments, and locations"
                      " as well."),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We let our clients get the help they desire. Whether '
                      'it is medical consultation from doctors of all specialties '
                      'online or reserving appointments, we make it possible.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We help guide the location off ambulance services;'
                      ' we help conduct Schedules and appointments for the '
                      'sake of connecting ambulance services with clients for'
                      ' emergency and outpatient.'),

              //

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We point our clients in the direction of radiologists'
                      ' and other image diagnosis practitioners they seek to find '
                      'along with the will to request an appointment and associate '
                      'clients of all kind online.'),

              SizedBox(height: 15,),

              serviceTile(
                title: 'Booking online laboratory /pathology services',
                logo: 'Images/tenawologo.png',
                text: 'For those of our clients who seek to have access to a more '
                    'modernized and advanced type of healthcare and examination, we'
                    ' reserve appointments and indicate the location of various health '
                    'facilities abroad. We are conducted in scheduling time and place '
                    'in order to connect our clients. We also contribute to booking and '
                    'arranging hotel and lodge services along with hooking our clients '
                    'for plane tickets.',
              ),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We make sure a well-organized list of drug from wholesalers'
                      ' is established as well as the prices of the drugs at hand are'
                      ' guaranteed in our service.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We indicate and link the list of medical wholesalers and '
                      'medical equipment obtained for medical use including the prices '
                      'necessary for the transaction to their respective distributors.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We associate in reporting to tremendous oxygen supply '
                      'companies so as to schedule a valid appointment for the sake '
                      'of connecting our clients to their desired companies.'),

              SizedBox(height: 15,),

              //

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We work to Indicate and direct our clients in the direction'
                      ' of different accumulations provided by various agencies and'
                      ' insurers; we schedule and connect our clients online.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We guarantee in locating addresses of any home care service'
                      ' providers capable of providing a door-to-door service. We '
                      'also serve to associate health professionals with different '
                      'health sectors that contribute to home care services.'),

              SizedBox(height: 15,),

              serviceTile(
                  title: 'Booking online laboratory /pathology services',
                  logo: 'Images/tenawologo.png',
                  text: 'We play a massive role in providing and contributing free '
                      'medical and health education in order to give a vivid'
                      ' awareness to the community about different health and '
                      'health-related issues at hand.'),

              SizedBox(height: 75,),




            ],
          ),
        ),
      ),
    );
  }
}
