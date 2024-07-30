import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class OurCoursesScreen extends StatelessWidget {
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
                title: Text('Our Courses',style: TextStyle(color: Colors.white),),
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
                'OUR COURSESS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Image.asset('courses.png'), // Use your image asset here
                ),
              ),
              Text(
                'Understanding the principles of confidentiality, integrity, and availability of data in the context of healthcare data protection.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for Basics of cybersecurity
                  },
                  child: Text('Basics of cybersecurity'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for Threat landscape in healthcare
                  },
                  child: Text('Threat landscape in healthcare'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}