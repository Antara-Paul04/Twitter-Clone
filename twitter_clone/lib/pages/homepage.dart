import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/profilepage.dart';
import 'package:twitter_clone/widgets/navbar.dart';
import 'package:twitter_clone/widgets/weather.dart';
import 'package:twitter_clone/widgets/navbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isDrawerOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E7E7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: const Color(0xFFF91A1A),
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
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning,',
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Antara',
                      style: TextStyle(
                        color: Color(0xFFF91A1A),
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                        hintText: '   Search...',
                        hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.search, color: Color(0xFFF91A1A)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                        prefixIconConstraints: BoxConstraints(minWidth: 40),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomNavBar(),
                    SizedBox(height: 5),
                    Weather(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
