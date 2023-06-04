import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  ScrollController controller = ScrollController();
  final aboutPageKey = GlobalKey();

  Future scrollToItem() async{
    final context = aboutPageKey.currentContext!;

    await Scrollable.ensureVisible(context,
      duration: const Duration(seconds: 3)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
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
                                    onTap:() => scrollToItem(),
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
                                  Text(
                                    "Portfolio",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400),
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

                  //start of about Me

                  Center(
                      child: Container(
                        key : aboutPageKey,
                    color: const Color(0xffD9D9D9),
                    height: 1024.h,
                    width: 1440.w,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 28.w, top: 46.h, right: 111.w),
                          child: Column(
                            children: [
                              //header About Me
                              SizedBox(
                                child: Column(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("About Me",
                                          style: GoogleFonts.poppins(
                                              fontSize: 80.sp,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 0.h,
                                        width: 387.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                            width: 3.h,
                                            color: const Color(0xffFD636D),
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              //End of header About me
                              SizedBox(
                                height: 89.h,
                              ),

                              //About Me Information
                              Padding(
                                padding: EdgeInsets.only(right: 78.w),
                                child: SizedBox(
                                  //color : Colors.amber,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 513.h,
                                        width: 513.w,
                                        child: SvgPicture.asset(
                                          'assets/svg/circle_logo.svg',
                                          height: 513.h,
                                          width: 513.w,
                                        ),
                                      ),
                                      Container(
                                        alignment:
                                            AlignmentDirectional.bottomStart,
                                        width: 694.w,
                                        height: 304.h,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                            width: 2.w,
                                            color: const Color(0xffFD636D),
                                          ),
                                          right: BorderSide(
                                            color: const Color(0xffFD636D),
                                            width: 2.w,
                                          ),
                                        )),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vestibulum vestibulum enim, a ultrices elit iaculis eget. Nulla eu feugiat metus. Morbi id leo pulvinar, feugiat velit in, tempor massa. Sed ac nunc dapibus, mollis leo at, iaculis erat. Vestibulum viverra nisl mi, sit amet commodo neque tempus ac. Vivamus at pellentesque dui. Aenean iaculis leo vitae velit cursus rhoncus. Nam nec bibendum est. Nunc augue quam, congue non tempus vel, tempus cursus quam. Cras fermentum lorem tempus dui bibendum, quis varius nulla posuere. Sed lacinia congue laoreet. Sed dictum varius vulputate.",
                                            style: GoogleFonts.poppins(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w300)),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              //End of about me Information
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Container(
                            color: const Color(0xffFD636D),
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
                                          color: Color(0xffD9D9D9),
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
                                          color: Color(0xffD9D9D9),
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
                            color: const Color(0xffFD636D),
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
                                              color: const Color(0xffD9D9D9),
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
                          