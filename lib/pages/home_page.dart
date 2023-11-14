import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text("Persegi"),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.blue
            ),
            child: Text("Segitiga"),
          )
        ],
      ),
    );
  }
}
