import 'package:flutter/material.dart';

void main() {
  runApp(developer());
}

class developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal, // Set the background color to teal
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('https://i1.wp.com/godofindia.com/wp-content/uploads/2017/05/ganesh-2.jpg'), // Replace with the path to your person's face image
              ),
              SizedBox(height: 10.0),
              Text(
                'GOPAN',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '+22996119149',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'fadcrepin@gmail.com',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),


                    ),
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
