import 'package:flutter/material.dart';

class serviceTile extends StatelessWidget {
  final String title;
  final String logo;
  final String text;
  const serviceTile({
    super.key,
    required this.title,
    required this.logo,
    required this.text,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(title,style: TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.w500),),
              ),
              Divider(color: Colors.grey.shade400,indent: 25,endIndent: 25,),

              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex:2,
                          child: Container(child: Image.asset(logo,height: 60,width: 60,))),

                      Expanded(
                        flex: 6,
                        child: Container(
                            child: Text(text,
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),
                            )),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.add),
                          Text("More Info")
                        ],
                      ),),
                  ),



                  SizedBox(
                    height: 30,
                    width: 125,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.remove_red_eye),
                          Text("Contact Us")
                        ],
                      ),),
                  ),

                ],
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
