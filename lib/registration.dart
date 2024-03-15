import 'package:flutter/material.dart';
import 'package:qrapplication/log.dart';

class Regi extends StatefulWidget {
  const Regi({super.key});

  @override
  State<Regi> createState() => _MyAppState();
}

class _MyAppState extends State<Regi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              'registration',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'First Name',)),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Last Name')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Email ID')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Phone Number')),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:  (context) => developer()));
              },
              child: Text(
                'register',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
