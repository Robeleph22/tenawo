import 'package:flutter/material.dart';

import '../Profile.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
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

                      SizedBox(height: 10,),

                      Center(child: Text('Please Give Us Your Feedback',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.orange)),)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  iconColor: Colors.orange,
                  border: InputBorder.none,
                  hintText: 'Subject',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
        ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 0,
                      ),
                    ],
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            iconColor: Colors.orange,
                            border: InputBorder.none,
                            hintText: 'Description',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15),
                          )
                      ),
                      onPressed: () {}, child: Text('Submit',style: TextStyle(fontSize: 16),)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
