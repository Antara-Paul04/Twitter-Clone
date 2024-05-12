import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  final bool isDarkModeEnabled;
  Weather({Key? key, required this.isDarkModeEnabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDarkModeEnabled?Color(0xFF282828): Colors.white,
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
              'Can’t decide where to start?',
              style: TextStyle(
                fontSize: 19.0,
                color: isDarkModeEnabled? Colors.white: Colors.black,
              ),
            ),
            Text(
              'Let the weather do it for you!',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
                color: isDarkModeEnabled? Colors.white: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 22.0),
                    backgroundColor: Color(0xFFF91A1A)
                  ),
                child: Text('Explore', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
