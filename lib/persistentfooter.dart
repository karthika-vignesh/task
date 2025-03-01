import 'package:flutter/material.dart';

class Persistentfooter extends StatelessWidget {
  const Persistentfooter({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('login',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu,color:Colors.white,),
        actions: [
          Icon(Icons.more_vert,color: Colors.pink,)
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(onPressed: (){}, child: Text('Submit')),
        ElevatedButton(onPressed: (){}, child: Text('Cancel')),
      ],
        persistentFooterAlignment: AlignmentDirectional.center,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.input), label: 'input'),
    ],
    ),
    );
  }
}

