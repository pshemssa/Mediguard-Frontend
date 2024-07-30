import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class TestimonialScreen extends StatelessWidget {
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
                title: Text('Testimonial',style: TextStyle(color: Colors.white),),
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
                'See What Healthcare Providers Are Saying',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Get involved in the fun and join the family of fighters...',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Alice Fenny Foxer', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                        'As a nurse, my primary focus has always been on patient care. Understanding the importance of cybersecurity can help me safeguard my patients\' data. MediGuard\'s training has been eye-opening, and the accessible content has equipped me with the skills I need to protect our patients\' data effectively. I can now pace and test my knowledge through interactive exercises, and the training is invaluable. I highly recommend it to all healthcare professionals.',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    ListTile(
                      title: Text('Regina Weissnat', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                        'MediGuard has been a game-changer for our healthcare institution. The training is interactive, easy to understand, and has significantly increased our knowledge of data security. We no longer fear cybersecurity threats, thanks to MediGuard.',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    ListTile(
                      title: Text('Marianne Bode', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                        'I am glad I took the course. I understand better how to protect patients\' data.',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    // Add more testimonials here
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}