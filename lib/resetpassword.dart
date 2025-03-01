import 'package:flutter/material.dart';
class resetpassword extends StatelessWidget {
  const resetpassword ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    child: Padding(
    padding: const EdgeInsets.all(30),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Resetpassword',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    const SizedBox(height: 20,),
    TextFormField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.pink),
    ),
    labelText: 'Oldpassword',
    ),
    ),
      const SizedBox (height: 20,),
      TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.pink),
          ),
          labelText: 'Newpassword',
        ),
      ),
      const SizedBox (height: 20,),
      TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.pink),
          ),
          labelText: 'Confirm New Password',
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



