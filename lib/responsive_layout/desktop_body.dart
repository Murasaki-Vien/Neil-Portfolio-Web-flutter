import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop/about_me.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //end of landingPage
                  Center(
                      child: SizedBox(
                    height: 1024.h,
                    width: 1440.w,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 28.w, top: 46.h),
                          child: Column(
                            children: [
                              //header
                              Row(
                                children: [
                                  Text(
                                    "Melvin",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    width: 716.w,
                                  ),
                                  GestureDetector(
                                    onTap: () => scrollToItemAbout(),
                                    child: Text(
                                      "About",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 184.w,
                                  ),
                                  GestureDetector(
                                    onTap: () => scrollToItemPortfolio(),
                                    child: Text(
                                      "Portfolio",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              //end of Header
                              SizedBox(
                                height: 120.h,
                              ),
                              //introductory part
                              SizedBox(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.w, right: 300.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Hi! I am",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 50.sp,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5.h),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Neil Melvin",
                                              style: GoogleFonts.poppins(
                                                fontSize: 80.sp,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Check out my",
                                              style: GoogleFonts.poppins(
                                                fontSize: 45.sp,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 14.w,
                                            ),
                                            Container(
                                                color: const Color(0xffFD636D),
                                                height: 50.h,
                                                width: 230.w,
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 41.w,
                                                        right: 48.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 34.w),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/svg/github_logo.svg',
                                                            height: 30.h,
                                                            width: 30.w,
                                                          ),
                                                        ),
                                                        Container(
                                                          color: const Color(
                                                              0xffD9D9D9),
                                                          height: 41.h,
                                                          width: 1.5.w,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 46.w),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/svg/instagram_logo.svg',
                                                            height: 30.h,
                                                            width: 30.w,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ]),
                                      // SizedBox(
                                      //   width: 163.w,
                                      // ),
                                      SvgPicture.asset(
                                        'assets/svg/circle_logo.svg',
                                        height: 513.h,
                                        width: 513.w,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              //end of introductory
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Container(
                            color: const Color(0xffD9D9D9),
                            height: 1051.h,
                            width: 111.w,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                    width: 51.h,
                                    height: 198.w,
                                    //color : Colors.orange,
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          color:
                                              Color.fromARGB(255, 29, 126, 216),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          color: Color(0xffFD636D),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          color:
                                              Color.fromARGB(255, 29, 126, 216),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          color: Color(0xffFD636D),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            color: const Color(0xffD9D9D9),
                            height: 111.h,
                            width: 1051.w,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 600.w, right: 55.w),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  // Container(
                                  //   height: 30.h,
                                  //   width : 136.w,
                                  //   color: Colors.amber,
                                  // ),
                                  SizedBox(
                                    height: 30.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Let's Connect!",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Container(
                                              color: const Color(0xffFD636D),
                                              height: 2.h,
                                              width: 255.w,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: SvgPicture.asset(
                            'assets/svg/wave_logo.svg',
                            width: 957.h,
                            height: 309.w,
                          ),
                        ),
                      ],
                    ),
                  )),

                  //end of landingPage

                  Center(
                    child: Container(
                        key: portfolioPageKey,
                        color: const Color(0xffFD636D),
                        height: 1024.h,
                        width: 1440.w,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 52.w, top: 41.h),
                              child: SizedBox(
                                // color : Colors.amber,
                                width: 1270.w,
                                child: Row(
                                  mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 327.w,
                                            child: Text("Latest Projects",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 80.sp,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 54.h,
                                      ),
                                      Row(
                                        children: [
                                          //Project 1
                                          Container(
                                              //color: Colors.amber,
                                              width: 417.h,
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      top: BorderSide(
                                                          color: const Color(
                                                              0xffD9D9D9),
                                                          width: 3.w))),
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 24.w),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Project 1",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        50.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500)),
                                                        Container(
                                                          height: 53.h,
                                                          width: 53.w,
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xff41426E),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_outward_rounded,
                                                            color: const Color(
                                                                0xffFD636D),
                                                            size: 53.sp,
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                    SizedBox(height: 30.h),
                                                    Container(
                                                      height: 384.h,
                                                      color: const Color(
                                                          0xffD9D9D9),
                                                    )
                                                    //end of Project 1
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),

                                  //Start of Proj2
                                  Padding(
                                    padding: EdgeInsets.only(top : 161.h),
                                    child: Container(
                                        //color: Colors.amber,
                                        width: 417.h,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color:
                                                        const Color(0xffD9D9D9),
                                                    width: 3.w))),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 24.w),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Project 2",
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 50.sp,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  Container(
                                                    height: 53.h,
                                                    width: 53.w,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff41426E),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                2)),
                                                    child: Icon(
                                                      Icons.arrow_outward_rounded,
                                                      color:
                                                          const Color(0xffFD636D),
                                                      size: 53.sp,
                                                    ),
                                                  )
                                                ],
                                              ),
                                  
                                              SizedBox(height: 30.h),
                                              Container(
                                                height: 384.h,
                                                color: const Color(0xffD9D9D9),
                                              )
                                              //end of Project 1
                                            ],
                                          ),
                                        )),
                                  ),
                                  //End of Proj2

                                  //Start of Proj3
                                  Container(
                                      //color: Colors.amber,
                                      width: 417.h,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  color:
                                                      const Color(0xffD9D9D9),
                                                  width: 3.w))),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 24.w),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Project 3",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 50.sp,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                Container(
                                                  height: 53.h,
                                                  width: 53.w,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xff41426E),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2)),
                                                  child: Icon(
                                                    Icons.arrow_outward_rounded,
                                                    color:
                                                        const Color(0xffFD636D),
                                                    size: 53.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                  
                                            SizedBox(height: 30.h),
                                            Container(
                                              height: 384.h,
                                              color: const Color(0xffD9D9D9),
                                            )
                                            //end of Project 1
                                          ],
                                        ),
                                      )),
                                  //end of Proj3
                                ]),
                              ),
                            ),
                            Align(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: SvgPicture.asset(
                                  'assets/svg/circles.svg',
                                  width: 800.w,
                                  height: 220.h,
                                ))
                          ],
                        )),
                  ),

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
                          