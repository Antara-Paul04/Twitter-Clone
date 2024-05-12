import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/profilepage.dart';
import 'package:twitter_clone/widgets/blogtile.dart';
import 'package:twitter_clone/widgets/inspotile.dart';
import 'package:twitter_clone/widgets/navbar.dart';
import 'package:twitter_clone/widgets/weathertile.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isDrawerOpened = false;
  bool isDarkModeEnabled = false;

  List<String> inspirationCategories = [
    'UI/UX',
    'Graphic',
    'Typography',
    'Web',
    'Social Media',
    'Branding',
    'Illustrations',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeEnabled ? Color(0xFF1D1D1D) : Color(0xFFE7E7E7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
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
                      color:const Color(0xFFF91A1A),
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Switch(
                    value: isDarkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        isDarkModeEnabled = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 148, 148, 148),
                    activeTrackColor: Color.fromARGB(255, 76, 76, 76),
                    inactiveThumbColor: Color.fromARGB(255, 176, 176, 176),
                    inactiveTrackColor: Color.fromARGB(255, 195, 195, 195),
                    thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.white;
                      }
                      return Colors.white;
                    }),
                  ),
                  SizedBox(width: 10,),
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
              SizedBox(height: 15),
              Text(
                'Good Morning,',
                style: TextStyle(
                  color: isDarkModeEnabled ? Colors.white : Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
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
                  hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, 
                  color:isDarkModeEnabled? Color.fromARGB(255, 117, 117, 117):const Color.fromARGB(255, 121, 121, 121) ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.search, color: Color(0xFFF91A1A)),
                  ),
                  filled: true,
                  fillColor:isDarkModeEnabled? Color(0xFF282828): Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  prefixIconConstraints: BoxConstraints(minWidth: 40),
                ),
              ),
              SizedBox(height: 5),
              CustomNavBar(isDarkModeEnabled: isDarkModeEnabled),
              SizedBox(height: 5),
              Weather(isDarkModeEnabled: isDarkModeEnabled),
              SizedBox(height: 20),
              Text(
                'Find Inspiration',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: isDarkModeEnabled ? Colors.white : Colors.black),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String category in inspirationCategories)
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            InspoWidget(category: category, isDarkModeEnabled: isDarkModeEnabled),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text('Blogs', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: isDarkModeEnabled ? Colors.white : Colors.black)),
              BlogWidget(isDarkModeEnabled: isDarkModeEnabled),
            ],
          ),
        ),
      ),
    );
  }
}
