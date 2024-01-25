import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Custom Button Flutter',style:TextStyle(
            color: Colors.white),
          ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor:Colors.lightBlue ,
        body: Center(
          child: CustomButton(
            color: Colors.white, // Color for the button
            containerColor: Colors.black, // Color for the container
            onTap: () {
              // Handle button tap
              print('Button tapped!');
            },
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color color;
  final Color containerColor;
  final VoidCallback onTap;

  CustomButton({required this.color, required this.containerColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 60,
        alignment: Alignment.center, // Center the child (title text)
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white), // Border for the container
        ),
        child: Text(
          'Submit',
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
