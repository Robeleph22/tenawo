import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenawo/LoginPage.dart';
import 'package:tenawo/Profile%20Pages/changeLanguage.dart';
import 'package:tenawo/Profile%20Pages/changeProfile.dart';
import 'package:tenawo/Profile%20Pages/profileDitails.dart';

import 'Profile Pages/Services.dart';
import 'Profile Pages/aboutUs.dart';
import 'Profile Pages/changePassword.dart';
import 'Profile Pages/contactUs.dart';
import 'Profile Pages/feedback.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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


             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => profileDetails()));
                   },
                   child: ListTile(
                     leading: ClipRRect(borderRadius: BorderRadius.circular(150),
                       child: Container(
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.orange.shade400,
                           ),
                           child: Icon(Icons.person,size:40,color: Colors.white,)
                       ),
                     ),
                     title: Text('Robel Ephrem'),
                     subtitle: Text('robelephrem2@gmail.com'),
                     trailing: Icon(Icons.arrow_forward),
                   ),
                 ),
               ),
             ),

              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 418,
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => services()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.miscellaneous_services_outlined,color: Colors.orange,size: 27,),
                          title: Text('Service We Provide'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),

                      Divider(height: 5,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => changeProfile()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.orange,size: 27,),
                          title: Text('Change Profile'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),


                      Divider(height: 5,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => changePassword()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.password,color: Colors.orange,size: 25,),
                          title: Text('Change Password'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => changeLanguage()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.language,color: Colors.orange,size: 27,),
                          title: Text('Change Language'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => feedback()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.question_answer_sharp,color: Colors.orange,size: 25,),
                          title: Text('Feedback'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => contactUs()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.phone,color: Colors.orange,size: 25,),
                          title: Text('Contact Us'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),

                      Divider(height: 4,color: Colors.grey.shade400,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => aboutUs()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.contact_support,color: Colors.orange,size: 25,),
                          title: Text('About Us'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

          SizedBox(height: 35,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10),
                          )
                      ),
                      onPressed: () {
                        final text = 'Logout Succesfull';
                        final snackBar = SnackBar(content: Text(text),backgroundColor: Colors.blue,duration: Duration(seconds: 5),);

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(builder: (context) => loginPage()));
                      }, child: Text('Logout',style: TextStyle(fontSize: 16),)),
                ),
              ),

              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
