import 'package:flutter/material.dart';

class screen extends StatelessWidget {
  const screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors:[Colors.purple, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
      ),
      ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/21.png',
                height: 300,
              ),
              const SizedBox(height: 90,),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal:100,vertical:20)
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.blueAccent,fontSize:20.0,fontWeight: FontWeight.bold,),
                ),
              ),
              const SizedBox(height: 5,),
              Text('I already have an account',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),)
            ],
          ),
        ),
      ),
    );
  }
}
