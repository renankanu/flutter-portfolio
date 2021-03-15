import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/app_bloc.dart';
import 'package:port_dart/app/screens/about/about_section.dart';
import 'package:port_dart/app/components/my_appbar.dart';
import 'package:port_dart/app/components/my_drawer.dart';
import 'package:port_dart/app/screens/experience/experience_section.dart';
import 'package:port_dart/app/screens/footer/footer.dart';
import 'package:port_dart/app/screens/home/components/background_container.dart';
import 'package:port_dart/app/screens/intro/intro_section.dart';
import 'package:port_dart/app/screens/repositories/repository_section.dart';
import 'package:port_dart/app/screens/skills/skill_section.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSection extends StatefulWidget {
  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  final _appBloc = Modular.get<AppBloc>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final aboutKey = new GlobalKey();
  final skillKey = new GlobalKey();
  final repoKey = new GlobalKey();
  final xpKey = new GlobalKey();

  ScrollController _controller;
  double pixels = 0.0;

  _initLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String locale = prefs.getString('locale') ?? 'pt';

    _appBloc.setMessage(Locale.fromSubtags(languageCode: '$locale'));
  }

  @override
  void initState() {
    super.initState();
    _initLocale();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
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
              controller: _controller,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 1240),
                      child: Column(
                        children: [
                          IntroSection(),
                          AnimatedAlign(
                            duration: Duration(milliseconds: 500),
                            alignment: pixels >= 53
                                ? Alignment(0.0, 0.0)
                                : Alignment(-20.0, 0.0),
                            curve: Curves.linearToEaseOut,
                            child: AnimatedOpacity(
                              opacity: pixels >= 53 ? 1.0 : 0.2,
                              duration: Duration(milliseconds: 500),
                              child: AboutSection(key: aboutKey),
                            ),
                          ),
                          AnimatedAlign(
                            duration: Duration(milliseconds: 500),
                            alignment: pixels >= 583
                                ? Alignment(0.0, 0.0)
                                : Alignment(-20.0, 0.0),
                            curve: Curves.linearToEaseOut,
                            child: AnimatedOpacity(
                              opacity: pixels >= 583 ? 1.0 : 0.5,
                              duration: Duration(milliseconds: 500),
                              child: SkillSection(key: skillKey),
                            ),
                          ),
                          AnimatedAlign(
                            duration: Duration(milliseconds: 500),
                            alignment: pixels >= 1680
                                ? Alignment(0.0, 0.0)
                                : Alignment(10.0, 0.0),
                            curve: Curves.linearToEaseOut,
                            child: AnimatedOpacity(
                              opacity: pixels >= 1680 ? 1.0 : 0.5,
                              duration: Duration(milliseconds: 500),
                              child: RepositorySection(key: repoKey),
                            ),
                          ),
                          ExperienceSection(
                            key: xpKey,
                            pixels: pixels,
                          ),
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
