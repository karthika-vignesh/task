import 'package:flutter/material.dart';

class mytab extends StatefulWidget {
  const mytab({super.key});

  @override
  State<mytab> createState() => _mytabState();
}
class _mytabState extends State<mytab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
        'Tab',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              dividerColor: Colors.white,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 10,
                labelStyle: TextStyle(),
                indicator: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                tabs: [
              Tab(
                text: 'Offline',
              ),
              Tab(
                text: 'Online',
              )
            ]),
            Expanded
    (child: TabBarView(children: [
              AnimatedContainer(duration: Duration(seconds: 2),
              child:Center(child:Text('Offline',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)
              ),
              AnimatedContainer(duration: Duration(seconds: 2),
              child:Center(child:Text('Online',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)
              ),
        ],
            ),
      ),
  ],
      ),
    ),
    );
  }
}
