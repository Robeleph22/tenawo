import 'package:flutter/material.dart';

import '../LoginPage.dart';
import '../Profile.dart';

class profileDetails extends StatefulWidget {
  const profileDetails({Key? key}) : super(key: key);

  @override
  State<profileDetails> createState() => _profileDetailsState();
}

class _profileDetailsState extends State<profileDetails> {
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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Profile Details',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.orange),),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                      children: [
                        ListTile(
                          leading: Text('Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          trailing: Text('Mr.',style: TextStyle(color: Colors.grey.shade600),),
                        ),

                        Divider(height: 4,color: Colors.grey.shade400,),

                        ListTile(
                          leading: Text('First Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          trailing: Text('Robel',style: TextStyle(color: Colors.grey.shade600)),
                        ),

                        Divider(height: 4,color: Colors.grey.shade400,),

                        ListTile(
                          leading: Text('Last Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          trailing: Text('Ephrem',style: TextStyle(color: Colors.grey.shade600)),
                        ),

                        Divider(height: 4,color: Colors.grey.shade400,),

                        ListTile(
                          leading: Text('Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          trailing: Text('robelephrem2@gmail.com',style: TextStyle(color: Colors.grey.shade600)),
                        ),


                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50,),

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
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
                      }, child: Text('Delete Tenawo Account',style: TextStyle(fontSize: 16),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
