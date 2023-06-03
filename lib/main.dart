import 'package:flutter/material.dart';
import 'package:neil_portfolio/homepage/homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 1024),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return const MaterialApp(
              debugShowCheckedModeBanner: false, home: HomePage());
        }));
  }
}
