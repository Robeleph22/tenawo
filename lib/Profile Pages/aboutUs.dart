import 'package:flutter/material.dart';
import 'package:tenawo/Profile%20Pages/Services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Profile.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
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
                  Row(
                    children: [
                      Center(child: Image.asset('Images/tenawologo.png',height: 75,width: 85,)),
                      Center(child: Text('About Us',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.orange)),)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Flexible(
            child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Who We Are?',style: TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.w500),),
                  ),
                  Divider(color: Colors.black,indent: 25,endIndent: 25,),

                  Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex:2,
                              child: Container(child: Image.asset('Images/tenawologo.png',height: 60,width: 60,))),

                          Expanded(
                            flex: 8,
                            child: Container(
                                child: Text('TENAWO is the first multiuser health service website and mobile '
                                    'application in Ethiopia that play a vital role in the day-to-day health'
                                    ' activities of society.The company is launched to close the communication '
                                    'gap between healthcare providers, healthcare facilities, and clients.',
                                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                                )),
                          ),
                          SizedBox(height: 100,)
                        ],
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => services()));
                            }, child: Text('For More Information',style: TextStyle(color: Colors.orange),)),

                            Stack(
                              children: [
                                Row(
                                  children: [
                                    Text('Contact Us'),
                                    IconButton(onPressed: () async{
                                      final Uri url = Uri(
                                        scheme: 'Tel',
                                        path: "9456",
                                      );
                                      if(await canLaunchUrl(url)){
                                        await launchUrl(url);
                                      }else{
                                        print("canot launch url");
                                      }
                                    }, icon: Icon(Icons.phone,color: Colors.orange,size: 30,),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Flexible(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 0.5,
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Vision',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(color: Colors.black, indent: 25, endIndent: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Image.asset('Images/tenawologo.png', height: 60, width: 60),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        'We envision a healthy and prosperous Ethiopian society '
                                            'to have access to quality health services and products '
                                            'for everyone.',
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                                      ),
                                      SizedBox(height: 10,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Flexible(
                  child: Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Mission',style: TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.w500),),
                        ),

                        Divider(color: Colors.black,indent: 25,endIndent: 25,),

                        Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex:2,
                                    child: Container(child: Image.asset('Images/tenawologo.png',height: 60,width: 60,))),

                                Expanded(
                                  flex: 8,
                                  child: Container(
                                      child: Column(
                                        children: [
                                          Text('To build a healthy society by providing effective medical care information'
                                              ' at an affordable price by connecting clients with the right service '
                                              'providersthroughtechnology.To enable our society to have access and locate '
                                              'qualifiedMedicalDoctors, pharmacies, medical laboratories, and other healthcare '
                                              'providers through user friendly technology.',
                                            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                                          ),
                                          SizedBox(height: 10,)
                                        ],
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
