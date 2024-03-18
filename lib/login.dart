import 'package:flutter/material.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/qrdart.dart';
import 'dart:convert' ;
import 'package:http/http.dart'as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  TextEditingController password = TextEditingController();
  TextEditingController rollno = TextEditingController();

  void login()async{
    Uri url=Uri.parse('https://scnner-web.onrender.com/api/login'
    );
    var response =await http.post(url,
        headers:<String,String>{
          'Content-Type':'application/json; charset=UTF-8',
  },
        body:jsonEncode({'rollno':rollno,'password':password}));
    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Qr()));

    }else {

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('reg failed')));

    }

    }
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
              child: TextField(controller: rollno,
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
              child: TextField(controller: password,
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


jsonEncode(Map<String, dynamic> map) {
}