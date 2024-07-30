import 'package:flutter/material.dart';
import '../widgets/navigation_menu.dart';
import '../widgets/base_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: NavigationMenu(),
              ),
              Text(
                'Empowering Youth in the Digital Age',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Image.asset('shield_lock.png'), // Use your image asset here
                ),
              ),
              Text(
                'Get ready to fortify your cybersecurity defenses and protect patient data with MediGuard. Our cutting-edge e-learning platform offers tailored courses designed to empower healthcare professionals like you with the skills needed to tackle cyber threats head-on.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                  child: Text('REGISTER \\ LOGIN'),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('Home'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: Text('About Us'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/service');
                    },
                    child: Text('Our Service'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/featured-point');
                    },
                    child: Text('Featured Point'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/newsletter');
                    },
                    child: Text('Newsletter'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/goals');
                    },
                    child: Text('Goals'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/testimonial');
                    },
                    child: Text('testimonial'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/our-courses');
                    },
                    child: Text('courses'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}