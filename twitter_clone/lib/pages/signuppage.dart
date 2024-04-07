import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06141D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create a New Account',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 40),
            Text('Username', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your username',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 188, 188, 188)),
                filled: true,
                fillColor: Color(0xFF1B2730),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 20),
            Text('Email Address', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 188, 188, 188)),
                filled: true,
                fillColor: Color(0xFF1B2730),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 20),
            Text('Password', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 188, 188, 188)),
                filled: true,
                fillColor: Color(0xFF1B2730),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality here for signup process
                },
                child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: const Color.fromARGB(255, 126, 126, 126)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF1D9FF0)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
