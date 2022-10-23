// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios), //icon back kurang dari
        title: Text('Lesson'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined), //icon setting titik 3
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(150, 150),
                bottomRight: Radius.elliptical(150, 150),
              ),
            ),
          ),
          //membuat tulisan dan dikasih jarak vertikal dan horizontalnya
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 35.0, horizontal: 25.0),
            child: Text(
              'Transalte these phrases to english',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          //membuat box kotak yang di tumpuk ke stack, dengan disesuaikan jarak marginnya
          Container(
            margin: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
            height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 20), // untuk rubah posisi shadow
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
