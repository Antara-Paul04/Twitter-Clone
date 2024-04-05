import 'package:flutter/material.dart';

class IconButtonWithCount extends StatelessWidget {
  final Widget icon;
  final int count;
  final VoidCallback onPressed;

  const IconButtonWithCount({
    Key? key,
    required this.icon,
    required this.count,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(width: 4),
          Text(
            count.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
