import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
              'Log in to Twitter',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 40),
            Text('Username or Email Address', style:TextStyle(color:Colors.white, fontSize: 18)),
            SizedBox(height:10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email Address or Username',
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
            Text('Password', style:TextStyle(color:Colors.white, fontSize: 18)),
            SizedBox(height:10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: const Color.fromARGB(255, 188, 188, 188)),
                filled: true,
                fillColor: Color(0xFF1B2730),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login', style: TextStyle(fontSize: 16, color: Colors.white)),
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
                  Text('Dont have an account?', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Color(0xFF1D9FF0)),
                    ),
                  )
          ],
        ),
      ),
      ]
    )));
  }
}
