import 'package:flutter/material.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop1/about_me1.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop1/desktop_page1.dart';
import 'package:neil_portfolio/responsive_layout/pages/desktop1/projects_page_one.dart';
import 'package:url_launcher/url_launcher.dart';


class DesktopBody1 extends StatefulWidget {
  const DesktopBody1({super.key});

  @override
  State<DesktopBody1> createState() => _DesktopBody1State();
}

class _DesktopBody1State extends State<DesktopBody1> {
    final aboutPageKey = GlobalKey();
  final portfolioPageKey = GlobalKey();

  Future scrollToItemAbout() async {
    final contextAboutPageKey = aboutPageKey.currentContext!;

    await Scrollable.ensureVisible(contextAboutPageKey,
        duration: const Duration(seconds: 3), curve: Curves.bounceOut);
  }

  Future scrollToItemPortfolio() async {
    final contextPortfolioPageKey = portfolioPageKey.currentContext!;

    await Scrollable.ensureVisible(contextPortfolioPageKey,
        duration: const Duration(seconds: 3), curve: Curves.bounceOut);
  }

  //redirection link for github
  Future<void> _goGihubPage(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for Insta
  Future<void> _goInstaPage(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  //redirection link for CampushareRepo
 

  //redirection link for _gotoResume
  Future<void> _gotoResume(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // landingPage
                  
                  DesktopLandingPage1(
                    scrollToItemAbout: scrollToItemAbout,
                    scrollToItemPortfolio : scrollToItemPortfolio,
                    goGihubPage : _goGihubPage,
                    gotoResume : _gotoResume,
                    goInstaPage : _goInstaPage,
                  ),

                  //end of landingPage

                  //ProjectPageOne(),
                 
                  ProjectPageOne(
                    portfolioPageKey: portfolioPageKey, 
                    //projectRedirect: _projectRedirect, 
                    // repoMindMatch: _projectRedirect,
                    // repoRentNaTeknoy: _projectRedirect
                  ),

                  //start of about Me

                  DesktopAboutMe1(
                    aboutPageKey: aboutPageKey,
                  )

                  //end of about me
                ],
              ),
            ),
          ],
        ));
  }
}