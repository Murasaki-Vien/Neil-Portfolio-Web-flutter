import 'package:flutter/material.dart';
import 'package:neil_portfolio/responsive_layout/desktop_body.dart';
import 'package:neil_portfolio/responsive_layout/desktop_body1.dart';
import 'package:neil_portfolio/responsive_layout/mobile_body.dart';
import 'package:neil_portfolio/responsive_layout/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            mobileBody: MobileBody(),
            desktopBody1: DesktopBody1(),
            desktopBody: DesktopBody()));
  }
}
