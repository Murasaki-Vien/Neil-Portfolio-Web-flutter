import 'package:flutter/material.dart';
import 'package:neil_portfolio/responsive_layout/dimenstions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody1;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody1,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < mobileWidth){
          print("YOUR ON MOBILE VIEW");
          return mobileBody;
        }else if (constraints.maxWidth < desktopWidth1){
          return desktopBody1;
        }else{
          return desktopBody;
        }
      }
    
    );
  }
}