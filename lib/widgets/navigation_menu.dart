import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, color: Colors.white),
      onSelected: (String result) {
        switch (result) {
          case 'About Us':
            Navigator.pushNamed(context, '/about');
            break;
          case 'Our Service':
            Navigator.pushNamed(context, '/service');
            break;
          case 'Feature Point':
            Navigator.pushNamed(context, '/featured-point');
            break;
          case 'Our Goals':
            Navigator.pushNamed(context, '/goals');
            break;
          case 'Testimonial':
            Navigator.pushNamed(context, '/testimonial');
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'About Us',
          child: Text('About Us', style: TextStyle(color: Colors.black)), // Adjust text color if needed
        ),
        PopupMenuItem<String>(
          value: 'Our Service',
          child: Text('Our Service', style: TextStyle(color: Colors.black)), // Adjust text color if needed
        ),
        PopupMenuItem<String>(
          value: 'Feature Point',
          child: Text('Feature Point', style: TextStyle(color: Colors.black)), // Adjust text color if needed
        ),
        PopupMenuItem<String>(
          value: 'Our Goals',
          child: Text('Our Goals', style: TextStyle(color: Colors.black)), // Adjust text color if needed
        ),
        PopupMenuItem<String>(
          value: 'Testimonial',
          child: Text('Testimonial', style: TextStyle(color: Colors.black)), // Adjust text color if needed
        ),
      ],
    );
  }
}