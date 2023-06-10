import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Register.dart';
import 'Utilites/CupertinoTabBarApp.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(child: Image.asset('Images/tenawologo.png',height: 150,width: 150,)),
                  ],
                ),

                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text('Login',style: TextStyle(color: Colors.orange,fontSize: 22,fontWeight: FontWeight.bold),),
                    )),

                SizedBox(height: 25,),
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

                SizedBox(height: 20,),

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
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock,color: Colors.orange),
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {},
                          child:Text('Forget Password ?',
                              style: TextStyle(fontSize: 15,color: Colors.orange)),
                      )

                    ],
                  ),
                ),

                SizedBox(height: 5,),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoTabBarExample()));
                        }, child: Text('LOGIN',style: TextStyle(fontSize: 16),)),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "If not a member ",style: TextStyle(fontSize: 15,color: Colors.grey)),
                          TextSpan(text: " Register Now",style: TextStyle(fontSize: 15,color: Colors.orange,fontWeight: FontWeight.bold),recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()))),
                        ]
                    )
                    )
                  ],
                ),

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(child: Divider(thickness: 1,color: Colors.lightBlueAccent)
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or Continue With",style: TextStyle(fontSize: 18),),
                      ),
                      Expanded(child: Divider(thickness: 1,color: Colors.orange)
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('Images/google.png',width: 50,height: 50,),

                    Image.asset('Images/applelogo.png',width: 55,height: 55,),
                  ],
                ),

                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
