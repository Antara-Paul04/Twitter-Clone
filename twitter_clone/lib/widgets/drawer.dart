import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomDrawerExample(),
    );
  }
}

class CustomDrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Antara', // Replace with actual username
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                'paul.antara04@gmail.com', // Replace with actual email
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/b0/75/f8/b075f8b232d3bf57d41893afa5070597.jpg',
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.blue, // Customize the header background color
              ),
            ),
            ListTile(
              title: Text('Item 1'), // Replace with your menu item text
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'), // Replace with your menu item text
              onTap: () {
                // Handle item 2 tap
              },
            ),
            // Add more ListTiles for additional menu items
          ],
        ),
      ),
      body: Center(
        child: Text('Your main content goes here'),
      ),
    );
  }
}
