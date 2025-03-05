import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo',style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        leading: Builder(
            builder: (context) => IconButton(
                 icon: Icon(Icons.menu, color: Colors.lightBlue),
            onPressed: () {
    Scaffold.of(context).openDrawer();
    },
      ),
    ),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.favorite,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.mail,color: Colors.white,),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
        DrawerHeader(decoration: BoxDecoration(
        color: Colors.blueGrey,
        ),child: Column(
        children: [
          Text('Flutter',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        ],
      ),
      ),
            ListTile(
              leading:Icon(Icons.home),
              trailing: Icon(Icons.arrow_right),
              title: Text('Home'),
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.update),
              trailing: Icon(Icons.arrow_right),
              title: Text('Update'),
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.offline_pin_rounded),
              trailing: Icon(Icons.arrow_right),
              title: Text('Offline'),
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.details),
              trailing: Icon(Icons.arrow_right),
              title: Text('Details'),
            ),
            Divider(),
          ],
        ),
    ),
    );
  }
}
