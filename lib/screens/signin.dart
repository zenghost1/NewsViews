import 'package:flutter/material.dart';
import 'package:newsviews/screens/walk3.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:100.0,horizontal: 32.0),
        child: Column(
          children: [
            TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your Username",
                  labelText: "Username"
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "Password"
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: ElevatedButton(
                   child: Text("Sign In"),
                   style: TextButton.styleFrom(),
                   onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Walk3Screen()) );},
                   ),
              )
          ],
        ),
      ),
    );
  }
}
