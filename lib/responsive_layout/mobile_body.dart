import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: const Center(
        child : Column(
          children: [
            Text("MOBILE VIEW")
          ],)),
    );
  }
}