import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';

class OurServiceScreen extends StatelessWidget {
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
                title: Text('Our Service',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'EMPOWERING HEALTHCARE PROFESSIONALS WITH CYBERSECURITY VIGILANCE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              ServiceCard(
                title: 'Cyber security Assessment',
                description: 'Understanding of cybersecurity principles',
                icon: Icons.security,
              ),
              ServiceCard(
                title: 'Intrusion Detection and Prevention',
                description: 'Tailored for healthcare professionals',
                icon: Icons.warning,
              ),
              ServiceCard(
                title: 'Incident Response and Recovery',
                description: 'Emphasizing the importance of safeguarding patient data',
                icon: Icons.healing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  ServiceCard({required this.title, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8), // Make the card background slightly transparent
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.black),
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
        subtitle: Text(description, style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
    );
  }
}