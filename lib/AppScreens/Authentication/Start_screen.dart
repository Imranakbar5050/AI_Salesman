import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ist_project/AppScreens/Authentication/Login_screen.dart';
import 'package:ist_project/AppScreens/Authentication/Signup_screen.dart';

import '../../utils/appimages.dart';

class Start_screen extends StatefulWidget {
  const Start_screen({super.key});

  @override
  State<Start_screen> createState() => _Start_screenState();
}

class _Start_screenState extends State<Start_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Start'),
          ),
          body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                    padding: const EdgeInsets.all(10), // Space between image and shadow
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          blurRadius: 10, // Soft edges of the shadow
                          spreadRadius: 2, // Spread area of the shadow
                          offset: const Offset(0, 5), // Shadow position (x, y)
                        ),
                      ],
                      color: Colors.white, // Background color for the circle
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        AppImages.flutter_1, // Replace with your image path
                        height: 120, // Adjust height
                        width: 120, // Adjust width
                        fit: BoxFit.cover, // Image fitting
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Text(
                  "Ai Salesman",
                  style: TextStyle(
                    fontSize: 40, // increased font size
                    fontWeight: FontWeight.bold, // make text bold
                    color: Colors.black, // different shining color
                  ),
                ),
                SizedBox(height: 5,),
                Text('where you meet sales' , style: TextStyle(fontSize: 15),),
                Text('excelence', style: TextStyle(fontSize: 15),),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup_screen()),);
                    // Sign in logic here
                  },
                  child: Text('Let\'s get started', style: TextStyle(color: Colors.white, fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    primary: Colors.pinkAccent, // Button color
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login_screen()),),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('I already have an account', style: TextStyle(fontSize: 15),),
                        ),SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_outlined, color: Colors.pinkAccent,
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        );

  }
}
