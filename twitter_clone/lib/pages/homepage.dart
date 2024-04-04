import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_clone/widgets/tweet.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040019),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    print("nav pressed");
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xFF845CF9),
                    size: 40,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150',
                  ),
                ),
              ],
            ),
            Tweet()
          ],
        ),
      ),
    );
  }
}
