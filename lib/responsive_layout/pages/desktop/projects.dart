import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ProjectsPage extends StatelessWidget {
  final dynamic portfolioPageKey;
  final dynamic repoMindMatch;
  final dynamic repoRentNaTeknoy;
  final dynamic repoCampuShare;
  const ProjectsPage({
    super.key,
    required this.portfolioPageKey,
    required this.repoCampuShare,
    required this.repoMindMatch,
    required this.repoRentNaTeknoy,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                              MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    const url =
                                                        'https://github.com/Murasaki-Vien/MindMatch-Game';

                                                    repoMindMatch(url);
                                                  },
                                                  child: Container(
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
                                                            EdgeInsets.only(
                                                                top: 24.w),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Project 1",
                                                                    style: GoogleFonts.poppins(
                                                                        fontSize: 50
                                                                            .sp,
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
                                                                    Icons
                                                                        .arrow_outward_rounded,
                                                                    color: const Color(
                                                                        0xffFD636D),
                                                                    size: 53.sp,
                                                                  ),
                                                                )
                                                              ],
                                                            ),

                                                            SizedBox(
                                                                height: 30.h),
                                                            Container(
                                                                height: 384.h,
                                                                color: const Color(
                                                                    0xffD9D9D9),
                                                                child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      right:
                                                                          5.w,
                                                                      left:
                                                                          5.w),
                                                                  child: Center(
                                                                    child: SvgPicture
                                                                        .asset(
                                                                            'assets/svg/mindMatch.svg'),
                                                                  ),
                                                                ))
                                                            //end of Project 1
                                                          ],
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //Start of Proj2
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            const url =
                                                'https://github.com/Murasaki-Vien/RentNaTeknoy';

                                            repoRentNaTeknoy(url);
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 161.h),
                                            child: Container(
                                                //color: Colors.amber,
                                                width: 417.h,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        top: BorderSide(
                                                            color: const Color(
                                                                0xffD9D9D9),
                                                            width: 3.w))),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 24.w),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Project 2",
                                                              style: GoogleFonts.poppins(
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
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 5.w,
                                                                  left: 5.w),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "assets/img/rentnaTeknoy.png",
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                      //end of Project 1
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                      //End of Proj2

                                      //Start of Proj3
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            const url =
                                                'https://github.com/Murasaki-Vien/CampuShare1.2#getting-started';

                                            repoCampuShare(url);
                                          },
                                          child: Container(
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
                                                        Text("Project 3",
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
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 5.w,
                                                                left: 5.w),
                                                        child: Center(
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/svg/campuShare.svg',
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                    //end of Project 1
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ),
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
                  );
  }
}