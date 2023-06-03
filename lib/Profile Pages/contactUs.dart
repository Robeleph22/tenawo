import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Profile.dart';

class contactUs extends StatefulWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
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
                  child: Text('Contact Us',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.orange),),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 80,
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
                  child: ListTile(
                    title: Text('Tenawo Contact Center'),
                    subtitle: Text('9456'),
                      trailing: IconButton(onPressed: () async{
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
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 80,
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
                  child: ListTile(
                    title: Text('Tenawo web Site'),
                    subtitle: Text('https://tenawo.com/'),
                    trailing: IconButton(onPressed: () {
                      launchUrl(Uri.parse('https://tenawo.com'));
                    }, icon: Icon(Icons.language_outlined,color: Colors.orange,size: 30,),)
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 90,
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
                      Stack(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                                child: Text('Social Media',style: TextStyle(fontSize: 16),),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(onPressed: () {
                            launchUrl(Uri.parse('https://www.facebook.com/people/Tenawo-App/pfbid0mv9V9XbqQpKEJoQeKtVztop814ZbgDQfmtGKGXbF7BDEGRfGiQoUop5ho9MtTxD2l/'));
                          }, icon: Image.asset('Images/facebook.png')),
                          IconButton(onPressed: () {
                            launchUrl(Uri.parse('https://twitter.com/TenawoApp?t=GSJz4VyC1YkUfY7xror7ew&s=09'));
                          }, icon: Image.asset('Images/twitter.png')),
                          IconButton(onPressed: () {
                            launchUrl(Uri.parse('https://www.instagram.com/tenawo_app/'));
                          }, icon: Image.asset('Images/instagram.png')),
                          IconButton(onPressed: () {
                            launchUrl(Uri.parse('https://www.youtube.com/channel/UC66olQjsEe7kmCoIwbVbuGg'));
                          }, icon: Image.asset('Images/youtube.png')),
                          IconButton(onPressed: () {
                            launchUrl(Uri.parse('https://www.linkedin.com/in/tenawo-app-957a23229'));
                          }, icon: Image.asset('Images/Linkedin.png')),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
