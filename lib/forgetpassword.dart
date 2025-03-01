import 'package:flutter/material.dart';
class forgetpassword extends StatelessWidget {
  const forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image:AssetImage('assets/images/'),),
        SizedBox(height: 30,),
        Text('Forger Your Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Text('Please enter your email address you did like your password reset information sent to',style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
        SizedBox(height: 20,),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon:Icon(Icons.email),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                    borderSide:BorderSide(color: Colors.green),
              ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.pink),
            ),
            labelText:"Email",
              hintText:"Enter Your Email"
          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              padding: const EdgeInsets.all(20.0)
          ),
          child: const Text(
            'Reset Password',
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

