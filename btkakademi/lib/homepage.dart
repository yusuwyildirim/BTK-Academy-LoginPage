import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x397383FF),
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
