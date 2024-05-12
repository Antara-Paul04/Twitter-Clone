import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/bloginteractions.dart';

class BlogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Good Design Makes Me Happy',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                CircleAvatar(radius: 17),
                SizedBox(width: 10),
                Text(
                  'Hannah Dollery',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                SizedBox(width: 165,),
                Interactions(),]
            ),
          ],
        ),
      ),
    );
  }
}
