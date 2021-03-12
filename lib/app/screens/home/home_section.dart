import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/screens/about/about_section.dart';
import 'package:port_dart/app/screens/components/my_appbar.dart';
import 'package:port_dart/app/screens/components/my_drawer.dart';
import 'package:port_dart/app/screens/experience/experience_section.dart';
import 'package:port_dart/app/screens/footer/footer.dart';
import 'package:port_dart/app/screens/home/components/background_container.dart';
import 'package:port_dart/app/screens/intro/intro_section.dart';
import 'package:port_dart/app/screens/repositories/repository_section.dart';
import 'package:port_dart/app/screens/skills/skill_section.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:port_dart/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSection extends StatefulWidget {
  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final aboutKey = new GlobalKey();
  final skillKey = new GlobalKey();
  final repoKey = new GlobalKey();
  final xpKey = new GlobalKey();

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              leading: GestureDetector(
                onTap: () => {_scaffoldKey.currentState.openDrawer()},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: FaIcon(
                    FontAwesomeIcons.bars,
                    size: 24,
                    color: MyColors.white,
                  ),
                ),
              ),
              backgroundColor: MyColors.background,
              centerTitle: true,
              title: RichText(
                text: TextSpan(
                  text: '<Renan',
                  style: TextStyle(
                      color: MyColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 26),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Kanu>',
                      style: TextStyle(
                          color: MyColors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 26),
                    )
                  ],
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 64),
              child: MyAppBar(
                onPressAbout: () => Scrollable.ensureVisible(
                    aboutKey.currentContext,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
                onPressSkill: () => Scrollable.ensureVisible(
                    skillKey.currentContext,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
                onPressRepo: () => Scrollable.ensureVisible(
                    repoKey.currentContext,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
                onPressXp: () => Scrollable.ensureVisible(xpKey.currentContext,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
              ),
            ),
      drawer: MyDrawer(
        onPressAbout: () => Scrollable.ensureVisible(aboutKey.currentContext,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuart),
        onPressSkill: () => Scrollable.ensureVisible(skillKey.currentContext,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuart),
        onPressRepo: () => Scrollable.ensureVisible(repoKey.currentContext,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuart),
        onPressXp: () => Scrollable.ensureVisible(xpKey.currentContext,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuart),
      ),
      body: Stack(
        children: [
          BackgroundContainer(),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 1240),
                      child: Column(
                        children: [
                          Text(AppLocalizations.of(context).helloWorld),
                          // Column(
                          //   children: [
                          //     TextButton(
                          //       child: Text("Set locale to German"),
                          //       onPressed: () => MyApp.of(context).setLocale(
                          //           Locale.fromSubtags(languageCode: 'pt')),
                          //     ),
                          //     TextButton(
                          //       child: Text("Set locale to English"),
                          //       onPressed: () => MyApp.of(context).setLocale(
                          //           Locale.fromSubtags(languageCode: 'en')),
                          //     ),
                          //     TextButton(
                          //       child: Text("Set locale to English"),
                          //       onPressed: () {
                          //         print(MyApp.of(context).locale);
                          //         _incrementCounter();
                          //       },
                          //     ),
                          //   ],
                          // ),
                          IntroSection(),
                          AboutSection(key: aboutKey),
                          SkillSection(key: skillKey),
                          RepositorySection(key: repoKey),
                          ExperienceSection(key: xpKey),
                        ],
                      ),
                    ),
                    Footer()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
