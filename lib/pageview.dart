import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.yellow),),
        centerTitle: true,
        leading:Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 30,),
        actions: [
          Icon(Icons.home,color: Colors.red,size: 30,),
        ],
        toolbarHeight: 120,
         // shape: RoundedRectangleBorder(
         //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20))
         ),
      );
  }
}
