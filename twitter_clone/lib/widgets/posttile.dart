import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        print('Button tapped for category');
      },
      child: Container(
        width: 250,
        height: 237,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://i.pinimg.com/564x/ae/e2/9c/aee29cdaef0bd165c63a21bd757c115c.jpg',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(radius: 12),
                    SizedBox(width: 10),
                    Text('author'),
                    Spacer(),
                    Icon(Icons.favorite_border_outlined, color: Color(0xFFF91A1A)),
                    Text('34', style: TextStyle(color: Colors.black)),
                    SizedBox(width: 15),
                    Icon(Icons.remove_red_eye_outlined, color: Color(0xFFF91A1A)), // Eye icon
                    Text('34', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
