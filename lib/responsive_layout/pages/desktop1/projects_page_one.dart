import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neil_portfolio/components/square.dart';

class ProjectPageOne extends StatefulWidget {
  final dynamic portfolioPageKey;
  // final dynamic repoRentNaTeknoy;
  // final dynamic repoCampuShare;
  const ProjectPageOne({
    super.key,
    required this.portfolioPageKey,
    // required this.repoMindMatch,
    // required this.repoRentNaTeknoy,
  });

  @override
  State<ProjectPageOne> createState() => _ProjectPageOneState();
}

class _ProjectPageOneState extends State<ProjectPageOne> {
  bool transparentIconB = false;
  bool transparentIconF = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          key: widget.portfolioPageKey,
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  width: 3.w,
                                  color: const Color(0xffD9D9D9),
                                ),
                                right: BorderSide(
                                  color: const Color(0xffD9D9D9),
                                  width: 3.w,
                                ),
                                left: BorderSide(
                                  color: const Color(0xffD9D9D9),
                                  width: 3.w,
                                ),
                                top: BorderSide(
                                  color: const Color(0xffD9D9D9),
                                  width: 3.w,
                                ),
                              )),
                              //width: 327.w,
                              child: Text("Latest Projects",
                                  style: GoogleFonts.poppins(
                                    fontSize: 80.sp,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ],
                        ),
                        Container(
                            alignment : AlignmentDirectional.center,
                            //color: Colors.amber,
                            //width: 800.w,
                            //height: 800.h,
                            child: Row(
                              mainAxisAlignment : MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_counter > 0) {
                                        _counter--;
                                        //transparentIconF = false;
                                      } else {
                                        transparentIconB = !transparentIconB;
                                        transparentIconF = false;
                                      }
                                      print("COUNTER: $_counter");
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    size : 50.sp,
                                    color: (transparentIconB)
                                        ? Colors.transparent
                                        : const Color(0xffD9D9D9),
                                  ),
                                ),
                                // expa(
                                //     child: ListView.builder(
                                //         itemCount: _projects.length,
                                //         scrollDirection: Axis.horizontal,
                                //         itemBuilder: (context, index) {
                                //           return SqaureProjContents(
                                //             counter: _counter,
                                //             //projectRedirect : projectRedirect,
                                //             //child: _projects[_counter],
                                //           );
                                //         })),
                              SqaureProjContents(
                                counter: _counter
                              ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_counter < 2) {
                                        _counter++;
                                        //transparentIconB = false;
                                      } else {
                                        //_counter = 0;
                                        transparentIconF = !transparentIconF;
                                        transparentIconB = false;
                                      }
                                      print("COUNTER: $_counter");
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size : 50.sp,
                                    color: (transparentIconF)
                                        ? Colors.transparent
                                        : const Color(0xffD9D9D9),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
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
    );
  }
}

// Row(
//   children: [
//     //Project 1
//     MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: GestureDetector(
//         onTap: () {
//           const url =
//               'https://github.com/Murasaki-Vien/MindMatch-Game';

//           repoMindMatch(url);
//         },
//         child: Container(
//             //color: Colors.amber,
//             width: 417.h,
//             decoration: BoxDecoration(
//                 border: Border(
//                     top: BorderSide(
//                         color:
//                             const Color(0xffD9D9D9),
//                         width: 3.w))),
//             child: Padding(
//               padding: EdgeInsets.only(top: 24.w),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment
//                             .spaceBetween,
//                     children: [
//                       Text("Project 1",
//                           style:
//                               GoogleFonts.poppins(
//                                   fontSize: 50.sp,
//                                   fontWeight:
//                                       FontWeight
//                                           .w500)),
//                       Container(
//                         height: 53.h,
//                         width: 53.w,
//                         decoration: BoxDecoration(
//                             color: const Color(
//                                 0xff41426E),
//                             borderRadius:
//                                 BorderRadius
//                                     .circular(2)),
//                         child: Icon(
//                           Icons
//                               .arrow_outward_rounded,
//                           color: const Color(
//                               0xffFD636D),
//                           size: 53.sp,
//                         ),
//                       )
//                     ],
//                   ),

//                   SizedBox(height: 30.h),
//                   Container(
//                       height: 384.h,
//                       color:
//                           const Color(0xffD9D9D9),
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             right: 5.w, left: 5.w),
//                         child: Center(
//                           child: SvgPicture.asset(
//                               'assets/svg/mindMatch.svg'),
//                         ),
//                       ))
//                   //end of Project 1
//                 ],
//               ),
//             )),
//       ),
//     ),
//   ],
// ),

//Start of Proj2
// MouseRegion(
//   cursor: SystemMouseCursors.click,
//   child: GestureDetector(
//     onTap: () {
//       const url =
//           'https://github.com/Murasaki-Vien/RentNaTeknoy';

//       repoRentNaTeknoy(url);
//     },
//     child: Padding(
//       padding: EdgeInsets.only(top: 161.h),
//       child: Container(
//           //color: Colors.amber,
//           width: 417.h,
//           decoration: BoxDecoration(
//               border: Border(
//                   top: BorderSide(
//                       color: const Color(0xffD9D9D9),
//                       width: 3.w))),
//           child: Padding(
//             padding: EdgeInsets.only(top: 24.w),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Project 2",
//                         style: GoogleFonts.poppins(
//                             fontSize: 50.sp,
//                             fontWeight:
//                                 FontWeight.w500)),
//                     Container(
//                       height: 53.h,
//                       width: 53.w,
//                       decoration: BoxDecoration(
//                           color:
//                               const Color(0xff41426E),
//                           borderRadius:
//                               BorderRadius.circular(2)),
//                       child: Icon(
//                         Icons.arrow_outward_rounded,
//                         color: const Color(0xffFD636D),
//                         size: 53.sp,
//                       ),
//                     )
//                   ],
//                 ),

//                 SizedBox(height: 30.h),
//                 Container(
//                   height: 384.h,
//                   color: const Color(0xffD9D9D9),
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         right: 5.w, left: 5.w),
//                     child: Center(
//                       child: Image.asset(
//                         "assets/img/rentnaTeknoy.png",
//                       ),
//                     ),
//                   ),
//                 )
//                 //end of Project 1
//               ],
//             ),
//           )),
//     ),
//   ),
// ),
// //End of Proj2

//Start of Proj3
// MouseRegion(
//   cursor: SystemMouseCursors.click,
//   child: GestureDetector(
//     onTap: () {
//       const url =
//           'https://github.com/Murasaki-Vien/CampuShare1.2#getting-started';

//       repoCampuShare(url);
//     },
//     child: Container(
//         //color: Colors.amber,
//         width: 417.h,
//         decoration: BoxDecoration(
//             border: Border(
//                 top: BorderSide(
//                     color: const Color(0xffD9D9D9),
//                     width: 3.w))),
//         child: Padding(
//           padding: EdgeInsets.only(top: 24.w),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Project 3",
//                       style: GoogleFonts.poppins(
//                           fontSize: 50.sp,
//                           fontWeight: FontWeight.w500)),
//                   Container(
//                     height: 53.h,
//                     width: 53.w,
//                     decoration: BoxDecoration(
//                         color: const Color(0xff41426E),
//                         borderRadius:
//                             BorderRadius.circular(2)),
//                     child: Icon(
//                       Icons.arrow_outward_rounded,
//                       color: const Color(0xffFD636D),
//                       size: 53.sp,
//                     ),
//                   )
//                 ],
//               ),

//               SizedBox(height: 30.h),
//               Container(
//                 height: 384.h,
//                 color: const Color(0xffD9D9D9),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                       right: 5.w, left: 5.w),
//                   child: Center(
//                     child: SvgPicture.asset(
//                       'assets/svg/campuShare.svg',
//                     ),
//                   ),
//                 ),
//               )
//               //end of Project 1
//             ],
//           ),
//         )),
//   ),
// ),
//end of Proj3
