import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenawo/LoginPage.dart';
import 'package:email_validator/email_validator.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String firstName,lastName,email,phone;

  TextEditingController passwords = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formkey,
          child: ListView(
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

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('First Name',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      validator: (firstName){
                        if(firstName!.isEmpty ){
                          return 'Enter First Name';
                        }else{
                          return null;
                        }
                      },
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Last Name',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      validator: (lastName){
                        if(lastName!.isEmpty ){
                          return 'Enter Last Name';
                        }else{
                          return null;
                        }
                      },
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                     ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Phone',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (phone){
                        if(phone!.isEmpty){
                          return 'Enter Phone Number';
                        }
                        if(phone.length < 10){
                          return 'Please enter valid Phone. Eg (0911212151)';
                        }
                        else{
                          return null;
                        }
                      },
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'Phone',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Email',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      spreadRadius: 1,
                      blurRadius: 0,
                    ),
                  ],
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      validator: (email) =>
                      email != null && !EmailValidator.validate(email) ? 'Enter a valid Email': null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Password',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      controller: passwords,
                      validator: (password){
                        if(password!.isEmpty){
                          return 'Enter Password';
                        }else{
                          return null;
                        }
                      },
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      controller: confirmpassword,
                      validator: (confirmPasswords){
                        if(confirmPasswords!.isEmpty){
                          return 're-enter Password';
                        }
                        if(passwords.text != confirmpassword.text){
                          return 'Password Do not match';
                        }
                        else{
                          return null;
                        }
                      },
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        iconColor: Colors.orange,
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

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

                      onPressed: () {
                       if(_formkey.currentState!.validate())
                         {
                           final text = 'Registered Succesfuly';
                           final snackBar = SnackBar(content: Text(text),backgroundColor: Colors.blue,duration: Duration(seconds: 5),);

                           ScaffoldMessenger.of(context).showSnackBar(snackBar);

                           Navigator.of(context, rootNavigator: false).push(CupertinoPageRoute(builder: (context) => loginPage()));


                         }else{
                         final text = 'Please Enter valid Info ';
                         final snackBar = SnackBar(content: Text(text),backgroundColor: Colors.red,duration: Duration(seconds: 5),);

                         ScaffoldMessenger.of(context).showSnackBar(snackBar);

                       }
                      }, child: Text('SIGNUP',style: TextStyle(fontSize: 16),)
                  ),
                ),
              ),

            ],
          ),
        ),

        ),
      );
  }
}

