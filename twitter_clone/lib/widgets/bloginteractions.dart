import 'package:flutter/material.dart';

class Interactions extends StatefulWidget {
  final bool isDarkModeEnabled;

  Interactions({Key? key, required this.isDarkModeEnabled}) : super(key: key);

  @override
  _MyStatefulWidget createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<Interactions> {
  int likes = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isLiked = !isLiked;
              if (isLiked) {
                likes++;
              } else {
                likes--;
              }
            });
          },
          child: Column(
            children: [
              Icon(
                isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                color: Color(0xFFF91A1A),
              ),
              Text('$likes', style: TextStyle(color: widget.isDarkModeEnabled ? Colors.white : Colors.black)),
            ],
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Icon(Icons.chat_bubble_outline, color: Color(0xFFF91A1A)),
            Text(
              '34',
              style: TextStyle(color: widget.isDarkModeEnabled ? Colors.white : Colors.black),
            ),
          ],
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Icon(Icons.repeat, color: Color(0xFFF91A1A)),
            Text(
              '56',
              style: TextStyle(color: widget.isDarkModeEnabled ? Colors.white : Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
