import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: const Center(
        child : Column(
          children: [
            Text("MOBILE VIEW")
          ],)),
    );
  }
}