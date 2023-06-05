import 'package:flutter/material.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop/about_me.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop/desktop_page.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final aboutPageKey = GlobalKey();
  final portfolioPageKey = GlobalKey();

  Future scrollToItemAbout() async {
    final contextAboutPageKey = aboutPageKey.currentContext!;

    await Scrollable.ensureVisible(contextAboutPageKey,
        duration: const Duration(seconds: 3), curve: Curves.bounceOut);
  }

  Future scrollToItemPortfolio() async {
    final contextPortfolioPageKey = portfolioPageKey.currentContext!;

    await Scrollable.ensureVisible(contextPortfolioPageKey,
        duration: const Duration(seconds: 3), curve: Curves.bounceOut);
  }

  //redirection link for github
  Future<void> _goGihubPage(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for Insta
  Future<void> _goInstaPage(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for CampushareRepo
  Future<void> _repoCampuShare(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for _repoRentNaTeknoy
  Future<void> _repoRentNaTeknoy(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for _repoMindMatch
  Future<void> _repoMindMatch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }
  //redirection link for _gotoResume
  Future<void> _gotoResume(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // landingPage
                  
                  DesktopLandingPage(
                    scrollToItemAbout: scrollToItemAbout,
                    scrollToItemPortfolio : scrollToItemPortfolio,
                    goGihubPage : _goGihubPage,
                    gotoResume : _gotoResume,
                    goInstaPage : _goInstaPage,
                  ),

                  //end of landingPage

                  ProjectsPage(
                    portfolioPageKey: portfolioPageKey, 
                    repoCampuShare: _repoCampuShare, 
                    repoMindMatch: _repoMindMatch,
                    repoRentNaTeknoy: _repoRentNaTeknoy),

                  //start of about Me

                  DesktopAboutMe(
                    aboutPageKey: aboutPageKey,
                  )

                  //end of about me
                ],
              ),
            ),
          ],
        ));
  }
}


// Container(
//                 alignment: Alignment.bottomLeft,
//                 child: SvgPicture.asset(
//                   'assets/svg/wave_logo.svg',
//                   width: 321.w,
//                   height: 952.h,
//                 ),
                
//               )



// Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       color: Colors.white,
//                       child: Padding(
//                         padding:
//                             EdgeInsets.only(left: 28.w, top: 46.h, bottom: 100.h),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   "Melvin",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20.sp,
//                                       fontWeight: FontWeight.w800),
//                                 ),
//                                 SizedBox(
//                                   width: 716.w,
//                                 ),
//                                 Text(
//                                   "About",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20.sp,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                                 SizedBox(
//                                   width: 184.w,
//                                 ),
//                                 Text(
//                                   "Portfolio",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 20.sp,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 201.h),
//                             //intrductory part
                        
//                             //Start of Hi I am Neil Melvin
//                             SizedBox(
//                               child: Row(
//                                 children: [
//                                   Column(children: [
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Hi! I am",
//                                           style: GoogleFonts.poppins(
//                                               fontSize: 50.sp,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.5.h),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Neil Melvin",
//                                           style: GoogleFonts.poppins(
//                                             fontSize: 80.sp,
//                                             fontWeight: FontWeight.w800,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Check out my",
//                                           style: GoogleFonts.poppins(
//                                             fontSize: 45.sp,
//                                             fontWeight: FontWeight.w300,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 14.w,
//                                         ),
//                                         Container(
//                                             color: const Color(0xffFD636D),
//                                             height: 50.h,
//                                             width: 230.w,
//                                             child: Center(
//                                               child: Padding(
//                                                 padding: EdgeInsets.only(
//                                                     left: 41.w, right: 48.w),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceBetween,
//                                                   children: [
//                                                     Padding(
//                                                       padding: EdgeInsets.only(
//                                                           right: 34.w),
//                                                       child: SvgPicture.asset(
//                                                         'assets/svg/github_logo.svg',
//                                                         height: 30.h,
//                                                         width: 30.w,
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                       color:
//                                                           const Color(0xffD9D9D9),
//                                                       height: 41.h,
//                                                       width: 1.5.w,
//                                                     ),
//                                                     Padding(
//                                                       padding: EdgeInsets.only(
//                                                           left: 46.w),
//                                                       child: SvgPicture.asset(
//                                                         'assets/svg/instagram_logo.svg',
//                                                         height: 30.h,
//                                                         width: 30.w,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             )),
//                                       ],
//                                     ),
//                                   ]),
//                                   SizedBox(
//                                     width: 163.w,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/svg/circle_logo.svg',
//                                     height: 513.h,
//                                     width: 513.w,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             //end of Hi I am Neil with Logo
                        
//                             //SizedBox(height : 195.h,),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),













































// SizedBox(
//   width: 250,
//   height: 250,
//   child: Stack(
//     children: <Widget>[
//       Container(
//         width: 250,
//         height: 250,
//         color: Colors.white,
//       ),
//       Container(
//         padding: const EdgeInsets.all(5.0),
//         alignment: Alignment.bottomCenter,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: <Color>[
//               Colors.black.withAlpha(0),
//               Colors.black12,
//               Colors.black45
//             ],
//           ),
//         ),
//         child: const Text(
//           'Foreground Text',
//           style: TextStyle(color: Colors.white, fontSize: 20.0),
//         ),
//       ),
//     ],
//   ),
// )
                          