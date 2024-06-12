import 'package:flutter/material.dart';
import 'signin_signup_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2B854),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SigninSignupScreen()),
          );
        },
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
            child: Image.asset(
              'assets/images/logo.png',
              height: 150,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
