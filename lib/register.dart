import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  final PageController_pagecontroller = PageController();
  List imageList = [
    {"id": 1, "image_path": 'assets/images/13.jpg'},
    {"id": 2, "image_path": 'assets/images/14.png'},
    {"id": 3, "image_path": 'assets/images/password.png'},
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Welcome", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.yellow),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 30,),
        actions: [
          Icon(Icons.home, color: Colors.red, size: 30,),
        ],
      ),
      body: Container(
        child: PageView.builder(

        ),
      ),
    );
  }
}
