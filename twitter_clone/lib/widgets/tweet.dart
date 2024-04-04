import 'package:flutter/material.dart';

class Tweet extends StatefulWidget {
  @override
  _TweetState createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), 
          border: Border.all(
            color: Color(0xFF3C2A71)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 25), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.repeat),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mode_comment_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Tweet content goes here',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
