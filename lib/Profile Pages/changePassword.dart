import 'package:flutter/material.dart';

import '../Profile.dart';
import '../Utilites/Textfiled.dart';

class changePassword extends StatefulWidget {
  const changePassword({Key? key}) : super(key: key);

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
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
                      Center(child: Text('Change Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.orange)),)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Old Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Old Password", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Create New Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Create New Password", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Confirm Password", textFiledIcon: Icon(Icons.email)),

              SizedBox(height: 25,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20),
                          )
                      ),

                      onPressed: () {}, child: Text('Save New Password',style: TextStyle(fontSize: 16),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
