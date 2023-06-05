import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class TileViewProjects extends StatelessWidget {
  String projectlinks;
  String svgLinks;
  TileViewProjects({
    super.key,
    required this.projectlinks,
    required this .svgLinks
  });

  // final List _projectNumber = [
  //   'Project 1',
  //   'Project 2',
  //   'Project 3',
  // ];
  // final List _projectName = [
  //   'Mind Match',
  //   'RentNaTeknoy',
  //   'CampuShare',
  // ];
  // final List _projectlinks = [
  //   'https://github.com/Murasaki-Vien/MindMatch-Game',
  //   'https://github.com/Murasaki-Vien/RentNaTeknoy',
  //   'https://github.com/Murasaki-Vien/CampuShare1.2#getting-started'
  // ];
  // final List _svgLinks = [
  //   "assets/svg/mindMatch.svg",
  //   "assets/svg/rentnaTeknoy.svg",
  //   "assets/svg/campuShare.svg"
  // ];

  Future<void> _projectRedirect(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      GestureDetector(
        onTap: () {
          String url = projectlinks;
          _projectRedirect(url);
        },
        child: Container(
          //color : Colors.purple,
          //width : 700.w,
          height: 100.h,
          child: SvgPicture.asset(svgLinks),
        ),
      ),
      SizedBox(
        height: 50.h,
      )
    ]);
  }
}

//ListView.builder(
                                //         itemCount: _projects.length,
                                //         scrollDirection: Axis.horizontal,
                                //         itemBuilder: (context, index) {
                                //           return SqaureProjContents(
                                //             counter: _counter,
                                //             //projectRedirect : projectRedirect,
                                //             //child: _projects[_counter],
                                //           );
                                //         })),


      //                           SingleChildScrollView(
      // child:
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround, 
      //     children: [
      //     Container(
      //       //color : Colors.purple,
      //       //width : 700.w,
      //       height: 100.h,
      //       child: SvgPicture.asset('assets/svg/mindMatch.svg'),
      //     ),
      //     SizedBox(
      //       height: 50.h,
      //     ),
      //     Container(
      //       //color : Colors.purple,
      //       //width : 200.w,
      //       height: 100.h,
      //       child: SvgPicture.asset('assets/svg/rentnaTeknoy.svg'),
      //     ),
      //     SizedBox(
      //       height: 50.h,
      //     ),
      //     Container(
      //       //color : Colors.purple,
      //       //width : 200.w,
      //       height: 100.h,
      //       child: SvgPicture.asset('assets/svg/campuShare.svg'),
      //     ),
      //   ]),
      // );