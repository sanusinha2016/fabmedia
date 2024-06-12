import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import TextInputFormatter

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80), // Add padding to the top of the text
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "    What's your mobile number?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Align text to the center
                  ),
                  SizedBox(height: 10),
                  Center(
                    // Wrap the text with Center widget
                    child: Text(
                      "We'll need to confirm it by sending a text",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center, // Align text to the center
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.phone, color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.white),
                  inputFormatters: [LengthLimitingTextInputFormatter(10)], // Limit input to 10 digits
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle signup logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE5A32E), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 21, color: Colors.white), // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
