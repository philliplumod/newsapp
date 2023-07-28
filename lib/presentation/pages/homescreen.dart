import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Test Screen'),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: 'Flutter',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'News',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
