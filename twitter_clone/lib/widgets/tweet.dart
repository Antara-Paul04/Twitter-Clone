import 'package:flutter/material.dart';
import 'package:twitter_clone/models/tweetbuttons.dart';

class Tweet extends StatefulWidget {
  @override
  _TweetState createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  int _likesCount = 0;
  int _retweetsCount = 0;
  int _commentsCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1B2730),
          borderRadius: BorderRadius.circular(12.0),
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
                      backgroundImage: NetworkImage('https://i.pinimg.com/564x/41/65/93/41659305375281faeee30af10ac08a96.jpg'),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    IconButtonWithCount(
                      icon: _likesCount > 0
                          ? Icon(Icons.favorite, color: Colors.white)
                          : Icon(Icons.favorite_border, color: const Color.fromARGB(255, 75, 75, 75)),
                      count: _likesCount,
                      onPressed: () {
                        setState(() {
                          _likesCount = (_likesCount == 0) ? 1 : 0;
                        });
                      },
                    ),
                    SizedBox(width:10),
                    IconButtonWithCount(
                      icon: _retweetsCount > 0
                          ? Icon(Icons.repeat, color: Colors.white)
                          : Icon(Icons.repeat, color: const Color.fromARGB(255, 75, 75, 75)),
                      count: _retweetsCount,
                      onPressed: () {
                        setState(() {
                          _retweetsCount = (_retweetsCount == 0) ? 1 : 0;
                        });
                      },
                    ),
                    SizedBox(width:10),
                    IconButtonWithCount(
                      icon: Icon(Icons.mode_comment_outlined, color: const Color.fromARGB(255, 75, 75, 75)),
                      count: _commentsCount,
                      onPressed: () {
                        setState(() {
                          _commentsCount++;
                        });
                      },
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
                    color: Colors.white,
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
