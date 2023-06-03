import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: const Center(
        child : Column(
          children: [
            Text("DESKTOP VIEW")
          ],)),
    );
  }
}