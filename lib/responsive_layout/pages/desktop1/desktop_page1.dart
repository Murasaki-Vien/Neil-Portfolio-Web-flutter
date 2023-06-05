import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopLandingPage1 extends StatelessWidget {
  final dynamic scrollToItemAbout;
  final dynamic scrollToItemPortfolio;
  final dynamic gotoResume;
  final dynamic goInstaPage;
  final dynamic goGihubPage;
  const DesktopLandingPage1({
    super.key,
    required this.scrollToItemAbout,
    required this.scrollToItemPortfolio,
    required this.gotoResume,
    required this.goInstaPage,
    required this.goGihubPage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
                Padding(
                  padding: EdgeInsets.only(right : 150.w),
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Melvin",
                        style: GoogleFonts.poppins(
                            fontSize: 27.sp, fontWeight: FontWeight.w800),
                      ),
                      
                      SizedBox(
                        width: 368.w,
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => scrollToItemAbout(),
                              child: Text(
                                "About",
                                style: GoogleFonts.poppins(
                                    fontSize: 27.sp, fontWeight: FontWeight.w400),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => scrollToItemPortfolio(),
                              child: Text(
                                "Portfolio",
                                style: GoogleFonts.poppins(
                                    fontSize: 27.sp, fontWeight: FontWeight.w400),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                const url =
                                    'https://drive.google.com/file/d/128Wbot8n-VomJB7kt4_WdMvtHa5693kX/view?usp=sharing';
                
                                gotoResume(url);
                              },
                              child: Text(
                                "Resume",
                                style: GoogleFonts.poppins(
                                    fontSize: 27.sp, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //end of Header
                SizedBox(
                  height: 120.h,
                ),
                //introductory part
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hi! I am",
                        style: GoogleFonts.poppins(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.5.h),
                      ),
                      Text(
                        "Neil Melvin",
                        style: GoogleFonts.poppins(
                          fontSize: 80.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
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
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url =
                                          'https://github.com/Murasaki-Vien';
                                      goGihubPage(url);
                                    },
                                    child: SvgPicture.asset(
                                      'assets/svg/github_logo.svg',
                                      height: 30.h,
                                      width: 30.w,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: const Color(0xffD9D9D9),
                                  height: 41.h,
                                  width: 1.5.w,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url =
                                          'https://www.instagram.com/nel_deyaz/';
                                      goInstaPage(url);
                                    },
                                    child: SvgPicture.asset(
                                      'assets/svg/instagram_logo.svg',
                                      height: 30.h,
                                      width: 30.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 20.h,
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
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              color: const Color(0xffD9D9D9),
              height: 1051.h,
              width: 111.w,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    //alignment : AlignmentDirectional.center,
                      width: 51.h,
                      //color : Colors.orange,
                      child: Center(
                        child: Column(
                          mainAxisAlignment : MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 29, 126, 216),
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
                              color: Color.fromARGB(255, 29, 126, 216),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            const Icon(
                              Icons.circle,
                              color: Color(0xffFD636D),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              color: const Color(0xffD9D9D9),
              height: 111.w,
              child: Padding(
                padding: EdgeInsets.only(left: 600.w, right: 55.w),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    // Container(
                    //   height: 30.h,
                    //   width : 136.w,
                    //   color: Colors.amber,
                    // ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right : 29.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                
                                Container(
                                  width: 255.w,
                                  decoration : BoxDecoration(
                                    border : Border(
                                      bottom: BorderSide(
                                        color : const Color(0xffFD636D),
                                        width : 2.w,
                                      )
                                    )
                                  ),
                                  child : Text("Let's Connect!",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w300,
                                    )),
                                )
                              ],
                            ),
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
    ));
  }
}
