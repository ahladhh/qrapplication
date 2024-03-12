import 'package:flutter/material.dart';
class Regi extends StatefulWidget {
  const Regi({super.key});

  @override
  State<Regi> createState() => _MyAppState();
}

class _MyAppState extends State<Regi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('registration'),
            Container(
              width:600 ,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                    labelText: 'enter your name'
                  )
                ),
              ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your name'
                  )
              ),
            ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your name'
                  )
              ),
            ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your name'
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
