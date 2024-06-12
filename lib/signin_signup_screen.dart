import 'dart:async';
import 'package:flutter/material.dart';
import 'signup.dart'; // Import the signup page

class SigninSignupScreen extends StatefulWidget {
  @override
  _SigninSignupScreenState createState() => _SigninSignupScreenState();
}

class _SigninSignupScreenState extends State<SigninSignupScreen> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/center_image.png',
    'assets/images/center_image1.png',
    'assets/images/center_image2.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 40.0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 300,
                width: 150,
              ),
            ),
          ),
          Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Container(
                key: ValueKey<String>(_images[_currentIndex]),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    _images[_currentIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the signup page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE2B854), // Button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 21, color: Colors.white), // Text color
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle signin action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE2B854), // Button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 21, color: Colors.white), // Text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
