import 'package:flutter/material.dart';
import '../widgets/base_screen.dart';
import '../widgets/navigation_menu.dart';

class RegistrationScreen extends StatelessWidget {
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
                title: Text('Registration Page',style: TextStyle(color: Colors.white),),
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
                'REGISTER \\ LOGIN',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Sign up with Google action
                      },
                      child: Text('Sign up with Google'),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'First Name', fillColor: Colors.white, filled: true),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(labelText: 'Last Name', fillColor: Colors.white, filled: true),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password', hintText: 'Password', fillColor: Colors.white, filled: true),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(labelText: 'Confirm Password', hintText: 'Confirm Password', fillColor: Colors.white, filled: true),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Registration action
                      },
                      child: Text('REGISTER'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Login action
                      },
                      child: Text('LOGIN'),
                    ),
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