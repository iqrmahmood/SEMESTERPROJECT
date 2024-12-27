import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo at the top
              Center(
                child: Image.asset(
                  'assets/cart.jpeg', // Replace with your logo asset path
                  height: 80,
                ),
              ),
              SizedBox(height: 16),

              // Privacy Policy Title
              Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Privacy Policy Content
              Text(
                """At GLOBAL CART, we respect your privacy and are committed to protecting your personal information. 
We collect personal information only for the purpose of improving your shopping experience, processing orders, 
and ensuring secure transactions. We do not share, sell, or disclose your personal data to any third parties 
unless required by law or with your consent. 

We may use cookies to enhance your experience and analyze the use of our website. By using our website, you agree 
to the collection of cookies as described in this Privacy Policy. 

Your security is important to us, and we take necessary measures to protect your information. Please feel free to 
contact us if you have any questions regarding our privacy practices.""",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),

              // "Read More" Button
              ElevatedButton(
                onPressed: () {
                  // Add your "Read More" functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  "READ MORE",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                    onPressed: () {
                      // Add your Facebook link here
                    },
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram, color: Colors.pink),
                    onPressed: () {
                      // Add your Instagram link here
                    },
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue),
                    onPressed: () {
                      // Add your Twitter link here
                    },
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
