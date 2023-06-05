import 'package:flutter/material.dart';
import 'package:neil_portfolio/responsive_layout/pages/mobile_view/about_me_view.dart';
import 'package:neil_portfolio/responsive_layout/pages/mobile_view/mobile_Landing.dart';
import 'package:neil_portfolio/responsive_layout/pages/mobile_view/projects_mobile_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});

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
  Future<void> _projectRedirect(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'COULD NOT LAUNCH';
    }
  }

  
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
      body: ListView(children: [
        SingleChildScrollView(
          child: Column(
            children: [
            //Start of Landing Page
            MobilLandingPageView(
              scrollToItemAbout: scrollToItemAbout,
              scrollToItemPortfolio : scrollToItemPortfolio,
              goGihubPage : _goGihubPage,
              goInstaPage: _goInstaPage,
              gotoResume : _gotoResume,
            ),
            //End of Landing Page
          
            //Projects
          
            MobileProjectsView(
              portfolioPageKey : portfolioPageKey,
            ),
          
            //END OF PROJECTS
          
            //Start of About Me
            AboutMeMobileView(
              aboutPageKey : aboutPageKey,
            )
            //End if About Me
          ]),
        )
      ]),
    );
  }
}
