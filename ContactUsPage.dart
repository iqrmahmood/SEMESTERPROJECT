import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Image.asset(
                  'assets/cart.jpeg', // Replace with your logo asset path
                  height: 80,
                ),
              ),
              SizedBox(height: 16),

              // Picture below the logo
              Center(
                child: Image.asset(
                  'assets/contactus.jpeg', // Replace with your picture asset path
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),

              // Contact Details Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Phone Number
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 20,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(width: 16),
                      Text(
                        "+1 (123) 456-7890", // Replace with your phone number
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Email Address
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        size: 20,
                        color: Colors.redAccent,
                      ),
                      SizedBox(width: 16),
                      Text(
                        "support@globalcart.com", // Replace with your email
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Physical Address
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        size: 20,
                        color: Colors.green,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          "123 Global Street, Shopping City, Country", // Replace with your address
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
                Text(
                """Get in touch with us for any queries, support, or feedback. 
We are here to help you with your shopping experience at GLOBAL CART. 
Feel free to reach out to us through any of the above contact methods.""",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),   
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
              SizedBox(height: 16),

              // "Get in Touch" Text Section
             
            ],
          ),
        ),
      ),
    );
  }
}
