// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Ninja ID",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count = 0;
          });
        },
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.restart_alt,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey,
              endIndent: 30,
              thickness: 3,
            ),
            Text(
              "NAME",
              style:
                  TextStyle(fontSize: 15, color: Colors.grey, letterSpacing: 2),
            ),
            Text(
              "Chun-Li",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Level",
              style:
                  TextStyle(fontSize: 15, color: Colors.grey, letterSpacing: 2),
            ),
            Text(
              "$count",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Ninja@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
