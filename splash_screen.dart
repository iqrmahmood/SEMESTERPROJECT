
import 'package:flutter/material.dart';
import 'registration_screen.dart'; // Import the second screen
class SplashScreen extends StatefulWidget {
@override
_SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
super.initState();
// Navigate to RegistrationScreen after 2 seconds
Future.delayed(Duration(seconds: 2), () {
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => RegistrationScreen()),
);
});
}
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: Center(
child: Image.asset(
'assets/cart.jpeg', // Add your logo here
width: 150, // Adjust the size if needed
height: 150,
),
),
);
}
}