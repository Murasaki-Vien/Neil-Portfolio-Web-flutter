import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopBody1 extends StatelessWidget {
  const DesktopBody1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                                  fontSize: 20.sp, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 716.w,
                            ),
                            Text(
                              "About",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 184.w,
                            ),
                            Text(
                              "Portfolio",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        //end of Header
                        SizedBox(
                          height: 120.h,
                        ),
                        //introductory part
                        SizedBox(
                          child: Row(
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
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/svg/github_logo.svg',
                                                height: 30.h,
                                                width: 30.w,
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ]),
                              SizedBox(
                                width: 163.w,
                              ),
                              SvgPicture.asset(
                                'assets/svg/circle_logo.svg',
                                height: 513.h,
                                width: 513.w,
                              )
                            ],
                          ),
                        ),
                        //end of introductory
                      ],
                    ),
                  ),
                  // Align(
                  //   alignment: AlignmentDirectional.centerEnd,
                  //   child: SvgPicture.asset(
                  //     'assets/img/polka.png',
                  //     width: 51.h,
                  //     height: 198.w,
                  //   ),
                  // ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Container(
                      color: const Color(0xffD9D9D9),
                      height: 111.h,
                      width: 1051.w,
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
                            child:  Column(
                              children: [
                              const Icon(Icons.circle, color :  Color.fromARGB(255, 29, 126, 216),),
                              SizedBox(height : 3.h,),
                              const Icon(Icons.circle, color :  Color(0xffFD636D),),
                              SizedBox(height : 3.h,),
                              const Icon(Icons.circle, color :  Color.fromARGB(255, 29, 126, 216),),
                              SizedBox(height : 3.h,),
                              const Icon(Icons.circle, color :  Color(0xffFD636D),),
                            ],)
                          ),
                        ],
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
          ],
        ),
      ),
    );
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
                          