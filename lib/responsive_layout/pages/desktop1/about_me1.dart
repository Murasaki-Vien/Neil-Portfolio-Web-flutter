import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopAboutMe1 extends StatelessWidget {
  final dynamic aboutPageKey;
  const DesktopAboutMe1({
    super.key,
    required this.aboutPageKey,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      key: aboutPageKey,
      color: const Color(0xffD9D9D9),
      height: 1024.h,
      width: 1440.w,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 46.h, right: 111.w),
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
                                fontSize: 80.sp, fontWeight: FontWeight.w600)),
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
                  height: 20.h,
                ),

                //About Me Information
                Padding(
                  padding: EdgeInsets.only(right : 25.w),
                  child: SizedBox(
                    //width : 1000.w,
                    //color : Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Container(
                          alignment: AlignmentDirectional.bottomStart,
                          // width: 1000.h,
                          height: 450.h,
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
                            left: BorderSide(
                              color: const Color(0xffFD636D),
                              width: 2.w,
                            ),
                            top: BorderSide(
                              color: const Color(0xffFD636D),
                              width: 2.w,
                            ),
                          )),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                    "     Hello! I am an aspiring Software Engineer currently in my third year of studying Computer Engineering at Cebu Institute of Technology - University. Throughout my education, I have developed active listening skills, effective communication abilities, and strong programming skills that have prepared me for the engineering world. I am eager to gain real-world experience and further refine my skills.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300)),
                                
                                SizedBox( height : 7.h),
                                Text(
                                    "     In addition to my academic pursuits, I have been involved in several projects that have helped me apply my knowledge and collaborate with a team. One notable project is CAMPUSHARE, a software development project in which I took on the role of lead front-end developer. I successfully managed a team of front-end developers and provided assistance to the project manager to ensure the project's smooth execution.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300)),
                                SizedBox( height : 7.h),
                                Text(
                                    "     Another project I worked on is RentNaTeknoy, a web application developed as part of my Modern Systems and Design course. In this project, I contributed as both a front-end and back-end developer. I utilized HTML for the front-end and employed Flask as the framework for the back-end development. The project also involved working with MySQL as the database management system.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300)),
                                SizedBox( height : 7.h),
                                Text(
                                    "     With a strong dedication to my craft and a relentless drive to learn and grow, I am passionate about leveraging my skills to contribute to the field of software engineering. I continuously seek out opportunities to expand my understanding and stay updated with the latest industry trends. I approach my work with professionalism and maintain a strong work ethic, which I believe are essential qualities for success in this field.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300)),
                                SizedBox( height : 7.h),
                                Text(
                                    "     Thank you for taking the time to explore my portfolio. If you have any potential collaborations or opportunities that align with my skills and aspirations, please feel free to reach out to me. I am excited to embark on new challenges and make a positive impact in the engineering world.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ),
                
                        SizedBox(
                          height: 513.h,
                          width: 513.w,
                          child: SvgPicture.asset(
                            'assets/svg/circle_logo.svg',
                            height: 513.h,
                            width: 513.w,
                          ),
                        ),
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
                              color: Color(0xffD9D9D9),
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
                              color: Color(0xffD9D9D9),
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
              color: const Color(0xffFD636D),
              height: 111.h,
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
                                        color : const Color(0xffD9D9D9),
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
                    ),
                    
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
