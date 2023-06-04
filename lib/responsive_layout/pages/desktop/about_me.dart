import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopAboutMe extends StatelessWidget {
  final dynamic aboutPageKey;
  const DesktopAboutMe({
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
                  height: 89.h,
                ),

                //About Me Information
                Padding(
                  padding: EdgeInsets.only(right: 78.w),
                  child: SizedBox(
                    //color : Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          alignment: AlignmentDirectional.bottomStart,
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
                      height: 30.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    ));
  }
}
