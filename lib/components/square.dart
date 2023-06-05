import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SqaureProjContents extends StatelessWidget {
  //final String child;
  //final dynamic projectRedirect;
  int counter;
  SqaureProjContents({
    super.key,
    required this.counter,
    //this.projectRedirect,
    //required this.child,
  });

  final List _projectNumber = [
    'Project 1',
    'Project 2',
    'Project 3',
  ];
  final List _projectName = [
    'Mind Match',
    'RentNaTeknoy',
    'CampuShare',
  ];
  final List _projectlinks = [
    'https://github.com/Murasaki-Vien/MindMatch-Game',
    'https://github.com/Murasaki-Vien/RentNaTeknoy',
    'https://github.com/Murasaki-Vien/CampuShare1.2#getting-started'
  ];
  final List _svgLinks = [
    "assets/svg/mindMatch.svg",
    "assets/svg/rentnaTeknoy.svg",
    "assets/svg/campuShare.svg"
  ];

  Future<void> _projectRedirect(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            child: Text(_projectName[counter],
                  style: GoogleFonts.poppins(
                      fontSize: 50.sp, fontWeight: FontWeight.bold,
                      color : const Color(0xffD9D9D9)
                    )),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                String url = _projectlinks[counter];
                _projectRedirect(url);
              },
              child: Container(
                child: Container(
                    //color: Colors.amber,
                    width: 417.h,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: const Color(0xffD9D9D9), width: 3.w))),
                    child: Padding(
                      padding: EdgeInsets.only(top: 24.w),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_projectNumber[counter],
                                  style: GoogleFonts.poppins(
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w500)),
                              Container(
                                height: 53.h,
                                width: 53.w,
                                decoration: BoxDecoration(
                                    color: const Color(0xff41426E),
                                    borderRadius: BorderRadius.circular(2)),
                                child: Icon(
                                  Icons.arrow_outward_rounded,
                                  color: const Color(0xffFD636D),
                                  size: 53.sp,
                                ),
                              )
                            ],
                          ),
              
                          SizedBox(height: 30.h),
                          Container(
                              height: 384.h,
                              color: const Color(0xffD9D9D9),
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.w, left: 5.w),
                                child: Center(
                                  child: SvgPicture.asset(_svgLinks[counter]),
                                ),
                              ))
                          //end of Project 1
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




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
