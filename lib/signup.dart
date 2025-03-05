import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState(); 
}
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
              Text('Welcome',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),),
              Image(image:AssetImage("assets/images/")),
          TextFormField(
             decoration: InputDecoration(
             prefixIcon: Icon(Icons.email),
             focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.blue),
             borderRadius: BorderRadius.circular(30),
    ),
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.pink),
           borderRadius: BorderRadius.circular(30),
    ),
          labelText: "Email",
          hintText: "Enter your Email"
             ),
          ),
           const SizedBox(height: 30,) ,
           TextFormField(
             decoration: InputDecoration(
                 prefixIcon: Icon(Icons.password),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.green),
                   borderRadius: BorderRadius.circular(30),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.pink),
                   borderRadius: BorderRadius.circular(30),
                 ),
                 labelText: "password",
                 hintText: "Enter your Password"
             ),
           ),
           const SizedBox(height: 30,),
         TextFormField(
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.mobile_screen_share),
             focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.green),
               borderRadius: BorderRadius.circular(30),
             ),
             enabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.pink),
               borderRadius: BorderRadius.circular(30),
             ),
             labelText: "Mobile Number",
             hintText: "Enter your Mobile Number"
         ),
       ),
           const SizedBox(height: 20,),
           ElevatedButton(
             onPressed: () {
               },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.amberAccent,
               padding: const EdgeInsets.all(30.0)
             ),
             child: const Text(
               'Login',
               style: TextStyle(color: Colors.pink,fontSize:20.0,),
             ),
           ),
    ],
      ),
      ),
      ),
    );
  }
  }

