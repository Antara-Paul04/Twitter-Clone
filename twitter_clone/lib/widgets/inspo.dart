import 'package:flutter/material.dart';

class InspoWidget extends StatelessWidget {
  final String category;

  const InspoWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Button tapped for category: $category');
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 50, 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF91A1A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
