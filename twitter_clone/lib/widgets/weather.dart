import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
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
              ),
            ),
            Text(
              'Let the weather do it for you!',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
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
