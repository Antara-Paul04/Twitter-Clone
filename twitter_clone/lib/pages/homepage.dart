import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/tweet.dart';
import 'package:twitter_clone/pages/profilepage.dart';
import 'package:twitter_clone/widgets/navdrawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isDrawerOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06141D),
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
                    setState(() {
                      isDrawerOpened = !isDrawerOpened;
                    });
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/b0/75/f8/b075f8b232d3bf57d41893afa5070597.jpg',
                    ),
                  ),
                ),
              ],
            ),
            Tweet(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Write button pressed');
        },
        backgroundColor: Color(0xFF1B2730),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70.0),
        ),
        child: Icon(Icons.edit_outlined, color: Color.fromARGB(255, 255, 255, 255), size: 30),
      ),
      drawer: isDrawerOpened ? NavDrawer() : null
      );
  }
}
