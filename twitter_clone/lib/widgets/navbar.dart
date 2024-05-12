import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/homepage.dart';
import 'package:twitter_clone/pages/profilepage.dart';

class CustomNavBar extends StatefulWidget {
  final bool isDarkModeEnabled;

  CustomNavBar({Key? key, required this.isDarkModeEnabled}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('Explore', 0),
          _buildNavItem('Library', 1),
          _buildNavItem('Jobs', 2),
          _buildNavItem('Forums', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: widget.isDarkModeEnabled ? Colors.white : Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.0),
          _selectedIndex == index
              ? Container(
                  height: 2.0,
                  width: 40.0,
                  color: Colors.red,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
