import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neil_portfolio/components/tile_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectsView extends StatelessWidget {
  final dynamic portfolioPageKey;
  MobileProjectsView({
    super.key,
    required this.portfolioPageKey,
  });

  // final List _projectNumber = [
  //   'Project 1',
  //   'Project 2',
  //   'Project 3',
  // ];
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        SizedBox(
                          height: 120.h,
                        ),
                        Container(
                            alignment: AlignmentDirectional.center,
                            //color : Colors.amber,
                            height: 500.h,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: const Color(0xffD9D9D9),
                                        width: 4.sp),
                                    bottom: BorderSide(
                                        color: const Color(0xffD9D9D9),
                                        width: 4.sp))),
                            child: Padding(
                              padding: EdgeInsets.only(top : 50.h),
                              child: Expanded(
                                  child: ListView.builder(
                                      itemCount: _projectName.length,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        return TileViewProjects(
                                          projectlinks: _projectlinks[index], svgLinks: _svgLinks[index]);
                                      })
                                  // Column(
                                  //   mainAxisAlignment : MainAxisAlignment.spaceAround,
                                  //   children: [
                                  //         Container(
                            
                                  //           //color : Colors.purple,
                                  //           //width : 700.w,
                                  //           height : 100.h,
                                  //           child : SvgPicture.asset(
                                  //             'assets/svg/mindMatch.svg'
                                  //           ),
                                  //         ),
                                  //         SizedBox(
                                  //           height: 50.h,
                                  //         ),
                                  //         Container(
                            
                                  //           //color : Colors.purple,
                                  //           //width : 200.w,
                                  //           height : 100.h,
                                  //           child : SvgPicture.asset(
                                  //             'assets/svg/rentnaTeknoy.svg'
                                  //           ),
                                  //         ),
                                  //         SizedBox(
                                  //           height: 50.h,
                                  //         ),
                                  //         Container(
                                  //           //color : Colors.purple,
                                  //           //width : 200.w,
                                  //           height : 100.h,
                                  //            child : SvgPicture.asset(
                                  //             'assets/svg/campuShare.svg'
                                  //           ),
                                  //         ),
                                  //       ]
                                  //   ),
                                  ),
                            )),
                        // Container(
                        //     alignment : AlignmentDirectional.center,
                        //     //color: Colors.amber,
                        //     //width: 800.w,
                        //     //height: 800.h,
                        //     child: Row(
                        //       mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         GestureDetector(
                        //           onTap: () {
                        //             setState(() {
                        //               if (_counter > 0) {
                        //                 _counter--;
                        //                 //transparentIconF = false;
                        //               } else {
                        //                 transparentIconB = !transparentIconB;
                        //                 transparentIconF = false;
                        //               }
                        //               print("COUNTER: $_counter");
                        //             });
                        //           },
                        //           child: Icon(
                        //             Icons.arrow_back_ios_new,
                        //             size : 50.sp,
                        //             color: (transparentIconB)
                        //                 ? Colors.transparent
                        //                 : const Color(0xffD9D9D9),
                        //           ),
                        //         ),
                        //         // expa(
                        //         //     child: ListView.builder(
                        //         //         itemCount: _projects.length,
                        //         //         scrollDirection: Axis.horizontal,
                        //         //         itemBuilder: (context, index) {
                        //         //           return SqaureProjContents(
                        //         //             counter: _counter,
                        //         //             //projectRedirect : projectRedirect,
                        //         //             //child: _projects[_counter],
                        //         //           );
                        //         //         })),
                        //       SqaureProjContents(
                        //         counter: _counter
                        //       ),
                        //         GestureDetector(
                        //           onTap: () {
                        //             setState(() {
                        //               if (_counter < 2) {
                        //                 _counter++;
                        //                 //transparentIconB = false;
                        //               } else {
                        //                 //_counter = 0;
                        //                 transparentIconF = !transparentIconF;
                        //                 transparentIconB = false;
                        //               }
                        //               print("COUNTER: $_counter");
                        //             });
                        //           },
                        //           child: Icon(
                        //             Icons.arrow_forward_ios_outlined,
                        //             size : 50.sp,
                        //             color: (transparentIconF)
                        //                 ? Colors.transparent
                        //                 : const Color(0xffD9D9D9),
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        //   )
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
