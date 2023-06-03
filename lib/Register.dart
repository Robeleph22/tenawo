import 'package:flutter/material.dart';

import 'Utilites/Textfiled.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Center(child: Image.asset('Images/tenawologo.png',height: 100,width: 120,)),
                      Center(child: Text('Register with us',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.orange)),)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: Text('First Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "First Name", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Last Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Last Name", textFiledIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Email',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Email", textFiledIcon: Icon(Icons.email)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "+251", textFiledIcon: Icon(Icons.phone)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Create Password", textFiledIcon: Icon(Icons.lock)),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16))),
              ),

              SizedBox(height: 10,),

              textFiled(hintText: "Confirm Password", textFiledIcon: Icon(Icons.lock)),

              SizedBox(height: 40,),


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

                      onPressed: () {}, child: Text('SIGNUP',style: TextStyle(fontSize: 16),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
