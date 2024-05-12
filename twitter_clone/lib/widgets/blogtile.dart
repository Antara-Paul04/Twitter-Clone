import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/bloginteractions.dart';

String text = 'Good design makes me happy';

class BlogWidget extends StatelessWidget {
  final isDarkModeEnabled;

  BlogWidget({Key? key, required this.isDarkModeEnabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDarkModeEnabled? Color(0xFF282828): Colors.white,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              (text.length > 20) ? '${text.substring(0, 20)}...' : text,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: isDarkModeEnabled? Colors.white:Colors.black),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                CircleAvatar(radius: 17),
                SizedBox(width: 10),
                Text(
                  'Hannah Dollery',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: isDarkModeEnabled? Colors.white:Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Interactions(isDarkModeEnabled: isDarkModeEnabled),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
