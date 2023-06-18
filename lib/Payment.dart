import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  File? image;

  Future pickImage(ImageSource source) async{
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e){
      print('failed to pick image: $e');
    }
  }
  var _value = "-1";

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


            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Payments',style: TextStyle(color: Colors.orange,fontSize: 20),),
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Appointment Number',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
            ),

            SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 50,
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
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    iconColor: Colors.orange,
                    border: InputBorder.none,
                    hintText: 'Appointment Number',
                    hintStyle: TextStyle(color: Colors.black54,),
                  ),
                ),
              ),
            ),
          ),


          SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Service Type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
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
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  value: _value,
                  items: [
                    DropdownMenuItem(child: Text('Service Type'),value: "-1",),
                    DropdownMenuItem(child: Text('Doctor'),value: "1",),
                    DropdownMenuItem(child: Text('Pharmacy'),value: "2",),
                    DropdownMenuItem(child: Text('Hospital'),value: "3",),
                    DropdownMenuItem(child: Text('Clinic'),value: "4",),
                    DropdownMenuItem(child: Text('Home Care'),value: "5",),
                    DropdownMenuItem(child: Text('Ambulance'),value: "6",),
                    DropdownMenuItem(child: Text('Oxygen Plant'),value: "7",),
                    DropdownMenuItem(child: Text('Medical Tourism'),value: "8",),
                    DropdownMenuItem(child: Text('Laboratory'),value: "9",),
                    DropdownMenuItem(child: Text('Diagnostic Image'),value: "10",),
                    DropdownMenuItem(child: Text('Pharmaceutical Wholesaler'),value: "11",),
                    DropdownMenuItem(child: Text('Medical Wholesaler'),value: "12",),
                    DropdownMenuItem(child: Text('Agencies & Insurances'),value: "13",),

                  ],
                  onChanged: (v){},
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Paymnet Method',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
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
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),
                  value: _value,
                  items: [
                    DropdownMenuItem(child: Text('Paymnet Method'),value: "-1",),
                    DropdownMenuItem(child: Text('Bank Transfer'),value: "1",),
                    DropdownMenuItem(child: Text('Telebirr'),value: "2",),
                  ],
                  onChanged: (v){},
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Upload Paymnet',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
            ),

            SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15.0),
             child: Container(
               height: 120,
               width: double.infinity,
               decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     color: Colors.blue,
                     spreadRadius: 1,
                     blurRadius: 0,
                   ),
                 ],
                 color:  Colors.white,
                 border: Border.all(color: Colors.blue),
                 borderRadius: BorderRadius.circular(12),
               ),
               child: image != null ? Image.file(image!,width: 50,height: 100,fit: BoxFit.cover,) :
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('No file Uploaded'),
                 ],
               ),
             ),
           ),


            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(8),
                          )
                      ),

                      onPressed: () => pickImage(ImageSource.gallery), child: Text('From Gallery')),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(8),
                          )
                      ),

                      onPressed: () => pickImage(ImageSource.camera), child: Text('Take Photo')),
                ),
              ],
            ),

            SizedBox(height: 20,),


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

                    onPressed: () {},
                    child: Text('Done',style: TextStyle(fontSize: 16),)),
              ),
            ),


            SizedBox(height: 50,),
          ],
        ),
      ),
    )
    );
  }
}
