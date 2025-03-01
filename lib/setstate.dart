import 'package:flutter/material.dart';
class Karthi extends StatefulWidget {
  const Karthi({super.key});

  @override
  State<Karthi> createState() => _KarthiState();
}

class _KarthiState extends State<Karthi> {
  @override
  String demo = "Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hello'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent),
      body: Container(
        child: Column(
          children: [
            Text(demo), Text('Hi How are you')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          demo = "Karthika Here";
        });
      }, child: Text('On Click'),
      ),
    );
  }
}
