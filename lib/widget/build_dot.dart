import 'package:flutter/material.dart';

class buildDot extends StatelessWidget {
  const buildDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      width: 8.0,
      height: 8.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
