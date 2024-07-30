import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class FeaturedPointScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                title: Text('Featured Point',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  NavigationMenu(),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Key Service Features Protecting You',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Image.asset('service_features.png'), // Use your image asset here
                ),
              ),
              Text(
                'This aims to enhance the healthcare provider staff\'s knowledge and skills on cybersecurity, and to improve their awareness and behavior towards potential threats and risks in the healthcare sector.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for User Training Programs
                  },
                  child: Text('User Training Programs'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for Vulnerability Assessment
                  },
                  child: Text('Vulnerability Assessment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}