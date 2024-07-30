import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  BaseScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_image.png'), // Use your background image asset here
              fit: BoxFit.cover,
            ),
          ),
        ),
        child,
      ],
    );
  }
}