import 'package:flutter/material.dart';
import 'package:task/persistentfooter.dart';
class login extends StatefulWidget {
  const login ({super.key});

  @override
  State<login> createState() => _State();
}

class _State extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("welcome",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.pink) ,),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.yellow,),
        actions: [
          IconButton(onPressed: () {}, icon:Icon(Icons.home,color: Colors.green,size:30)),
      ],
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Persistentfooter()));
      }, child: Icon(Icons.arrow_back_ios_new),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


