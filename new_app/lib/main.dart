import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Set primary color
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange), // Set accent color
        fontFamily: 'Roboto', // Set default font family
        textTheme: TextTheme( // Define text styles
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black), // Updated text style for "My name is Avadhut"
          bodyText1: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My AGL App', textAlign: TextAlign.center), // Centered the title
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, my name is Avadhut',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.teal), // Changed color to red
                textAlign: TextAlign.center, // Centered the text
              ),
              SizedBox(height: 20), // Increased space between text and image
              Container(
                width: 150, // Adjusted width of the container
                height: 150, // Adjusted height of the container
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Made the container circular
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, // Added a border color
                    width: 3, // Added border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/image.jpg',
                    fit: BoxFit.cover, // Ensures the image covers the container
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
