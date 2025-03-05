import 'package:flutter/material.dart';
class task extends StatefulWidget {
  const task({super.key});
  @override
  State<task> createState() => _taskState();
}
class _taskState extends State<task> {
  @override
  bool _iconUpdate= false;
  bool isChecked = false;
  void _togglePasswordView() {
    setState(() {
      _iconUpdate = !_iconUpdate;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:[Colors.purple,
                  Colors.purple,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:300.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight:Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  Text('Hello!',style: TextStyle(color: Colors.purple,fontWeight:FontWeight.bold,fontSize: 30),),
                  const SizedBox(height:50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical:5,),
                    child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Username",
                        ),
                      ),
                  ),
                  SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5,),
              child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Email"
                      ),
                    ),
            ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5,),
                    child: TextFormField(
                      obscureText: !_iconUpdate,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          // suffixIcon: Icon(Icons.visibility_off),
                          suffixIcon: IconButton(
                      icon: Icon(
                      _iconUpdate ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordView,
                    ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Password"
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text('I agree to the terms and conditions'),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: const EdgeInsets.symmetric(horizontal:60,vertical:20)
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white,fontSize:20.0,),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text("OR"),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                      color: Colors.blue,
                    ),
                ],
            ),
          ],
              ),
            ),
      ),
          Align(

          ),
      ],
      ),
    );
  }
}
