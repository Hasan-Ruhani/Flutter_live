import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Title Text
              Text(
                'Flutter Text Styling',
                style: TextStyle(
                  fontSize: 32.0, // Larger font size for the title
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Title text color
                ),
              ),
              SizedBox(height: 8.0), // Space between title and subtitle
              // Subtitle Text
              Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 18.0, // Smaller font size for the subtitle
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600], // Subtitle text color
                ),
              ),
              SizedBox(height: 20.0), // Space between subtitle and button
              // Interactive Text Button
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('You clicked the button!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 30.0), // Space between button and welcome message
              // Welcome Message
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Flutter!',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
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
