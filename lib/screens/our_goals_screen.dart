import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class OurGoalsScreen extends StatelessWidget {
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
                title: Text('Our Goals',style: TextStyle(color: Colors.white),),
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
                'Securing Your Digital World Together',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Image.asset('digital_world.png'), // Use your image asset here
                ),
              ),
              Text(
                'Our mission is to safeguard the digital health information of patients and healthcare providers by training healthcare providers on cybersecurity measures.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for Mission Statement
                  },
                  child: Text('Mission Statement'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation or action for Key Objectives
                  },
                  child: Text('Key Objectives'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}