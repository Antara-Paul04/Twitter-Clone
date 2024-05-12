import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/loginpage.dart';
import 'package:twitter_clone/pages/homepage.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
            ),
            SizedBox(height: 40),
            Text('Username', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your username',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
                filled: true,
                fillColor: Color.fromARGB(255, 232, 232, 232),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 20),
            Text('Email Address', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
                filled: true,
                fillColor: Color.fromARGB(255, 232, 232, 232),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 20),
            Text('Password', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 100, 100, 100)),
                filled: true,
                fillColor: Color.fromARGB(255, 232, 232, 232),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                },
                child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color.fromARGB(255, 249, 26, 26),
                  side: BorderSide(color: Color.fromARGB(255, 249, 26, 26)),
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
                    Text('Already have an account?', style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()), // Navigate to the Login screen
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Color.fromARGB(255, 249, 26, 26)),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
