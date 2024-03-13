import 'package:flutter/material.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/qrdart.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 10,
              height: 200,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Register No',labelStyle: TextStyle(backgroundColor: Colors.red,color: Colors.white)),
              ),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'password',labelStyle: TextStyle(backgroundColor: Colors.red,color: Colors.white)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Qr()));
              },
              child: Text(
                'login',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "register now!",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Regi()));
                },
                child: Text('registration',style: TextStyle(color: Colors.black),),style:TextButton.styleFrom(backgroundColor: Colors.yellowAccent,),),
          ],
        ),
      ),
    );
  }
}
