import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class NewsletterScreen extends StatelessWidget {
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
                title: Text('Newsletter',style: TextStyle(color: Colors.white),),
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
                'Newsletter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Subscribe to our newsletter to stay updated with the latest news and offers.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Subscribe action
                  },
                  child: Text('Subscribe'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Quick Links',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text('Our Service', style: TextStyle(color: Colors.lightBlue)),
              Text('About Us', style: TextStyle(color: Colors.lightBlue)),
              Text('Pricing', style: TextStyle(color: Colors.lightBlue)),
              Text('Testimonial', style: TextStyle(color: Colors.lightBlue)),
              // Add more quick links here
            ],
          ),
        ),
      ),
    );
  }
}