import 'package:flutter/material.dart';
import 'LoginScreen.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: RegistrationScreen(),
);
}
}
class RegistrationScreen extends StatefulWidget {
@override
_RegistrationScreenState createState() =>
_RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen> {
final _formKey = GlobalKey<FormState>();
final TextEditingController _usernameController =
TextEditingController();
final TextEditingController _emailController =
TextEditingController();
final TextEditingController _passwordController =
TextEditingController();
final TextEditingController _confirmPasswordController =
TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xFFF8F8F8), // Light pink background
body: Center(
child: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
child: Form(
key: _formKey,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Center(
child: Text(
'Create your Account',
style: TextStyle(
fontSize: 24.0,
fontWeight: FontWeight.bold,
),
),
),
SizedBox(height: 8),
Center(
child: Text(
'Please Provide the Details',
style: TextStyle(
fontSize: 14.0,
color: Colors.grey,
),
),
),
SizedBox(height: 32),
TextFormField(
controller: _usernameController,
decoration: InputDecoration(
hintText: 'Enter Name',
filled: true,
fillColor: Color(0xFFEFEFEF), // Light grey
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
borderSide: BorderSide.none,
),
),
validator: (value) {
if (value == null || value.isEmpty) {
return 'Name is required';
}
return null;
},
),
SizedBox(height: 16),
TextFormField(
controller: _emailController,
decoration: InputDecoration(
hintText: 'Enter Email',
filled: true,
fillColor: Color(0xFFEFEFEF),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
borderSide: BorderSide.none,
),
),
keyboardType: TextInputType.emailAddress,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Email is required';
} else if
(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
return 'Enter a valid email';
}
return null;
},
),
SizedBox(height: 16),
TextFormField(
controller: _passwordController,
decoration: InputDecoration(
hintText: 'Enter Password',
filled: true,
fillColor: Color(0xFFEFEFEF),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
borderSide: BorderSide.none,
),
),
obscureText: true,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Password is required';
} else if (value.length < 5) {
return 'Password must be at least 5 characters';
}
return null;
},
),
SizedBox(height: 16),
TextFormField(
controller: _confirmPasswordController,
decoration: InputDecoration(
hintText: 'Confirm Password',
filled: true,
fillColor: Color(0xFFEFEFEF),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
borderSide: BorderSide.none,
),
),
obscureText: true,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Confirm Password is required';
} else if (value != _passwordController.text) {
return 'Passwords do not match';
}
return null;
},
),
SizedBox(height: 24),
SizedBox(
width: double.infinity,
child: ElevatedButton(
onPressed: () {
if (_formKey.currentState!.validate()) {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => SuccessScreen()));
}
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue, // Button color
padding: EdgeInsets.symmetric(vertical: 16),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
child: Text(
'Sign Up',
style: TextStyle(color: Colors.white),
),
),
),
SizedBox(height: 16),
Center(
child: GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => LoginScreen()),
); // Navigate to LoginScreen
},
child: Text(
'Already have an account? Login',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
),
),
),
),
],
),
),
),
),
),
);
}
}
class SuccessScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Registration Successful'),
),
body: Center(
child: Text(
'Welcome! Your registration was successful.',
style: TextStyle(fontSize: 16),
),
),
);
}
}