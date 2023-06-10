import 'package:flutter/material.dart';

import '../Profile.dart';
import '../Utilites/Textfiled.dart';

class changeProfile extends StatefulWidget {
  const changeProfile({Key? key}) : super(key: key);

  @override
  State<changeProfile> createState() => _changeProfileState();
}

class _changeProfileState extends State<changeProfile> {
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
                  Column(
                    children: [
                      Center(child: Image.asset('Images/tenawologo.png',height: 100,width: 120,)),
                      Center(child: Text('Change Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.orange)),)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('First Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "First Name", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Last Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Last Name", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Email',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Email", textFiledIcon: Icon(Icons.email)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "+251", textFiledIcon: Icon(Icons.phone)),

              SizedBox(height: 30,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(12),
                          )
                      ),

                      onPressed: () {}, child: Text('Save changes',style: TextStyle(fontSize: 16),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
