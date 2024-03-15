import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:qrapplication/log.dart';
import 'package:http/http.dart'as http;


class Regi extends StatefulWidget {
  const Regi({super.key});

  @override
  State<Regi> createState() => _RegiState();
}

class _RegiState extends State<Regi> {
  TextEditingController FirstName  = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController rollno = TextEditingController();
  void regi()async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response =await http.post(uri,
    headers:<String,String>{
      'Content-Type':'application/json; charset=UTF-8',
    },
        body:jsonEncode({
          "name":FirstName.text,
          "email": Email.text,
          "password":Password.text,
          "rollno":rollno.text,
        }));
    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => developer()));

    }else {

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('reg failed')));

    }
    }
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
                  controller: FirstName,
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
                  controller: Email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Email')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: Password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Password')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: rollno,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'rollno')),
            ),
            TextButton(
              onPressed: () {
                regi();
                //Navigator.push(context, MaterialPageRoute(builder:  (context) => developer()));
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