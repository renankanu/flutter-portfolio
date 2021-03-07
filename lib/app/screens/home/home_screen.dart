import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/about/about_section.dart';
import 'package:port_dart/app/screens/components/my_appbar.dart';
import 'package:port_dart/app/screens/components/my_drawer.dart';
import 'package:port_dart/app/screens/home/components/background_container.dart';
import 'package:port_dart/app/screens/intro/intro_screen.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/images.dart';
import 'package:port_dart/app/utils/responsive.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final aboutKey = new GlobalKey();
  List _isHovering = [false, false, false, false];

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
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Image.asset(
                    'assets/images/menu.png',
                    height: 24,
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
                      fontFamily: 'FiraCode',
                      fontWeight: FontWeight.w600,
                      fontSize: 26),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Kanu>',
                      style: TextStyle(
                          color: MyColors.white,
                          fontFamily: 'FiraCode',
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
                isHovering: _isHovering,
                onPressAbout: () => Scrollable.ensureVisible(
                    aboutKey.currentContext,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
              ),
            ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          BackgroundContainer(),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(maxWidth: 1240),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60, top: 60),
                  child: Column(
                    children: [
                      IntroScreen(),
                      AboutSection(key: aboutKey),
                      new SizedBox(
                          height: 360.0,
                          width: double.infinity,
                          child: new Card()),
                      new SizedBox(
                          height: 360.0,
                          width: double.infinity,
                          child: new Card()),
                      new SizedBox(
                          height: 360.0,
                          width: double.infinity,
                          child: new Card()),
                      // destination
                      //                       Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Container(
                      //     height: 48,
                      //     color: MyColors.white,
                      //   ),
                      //   // child: InkWell(
                      //   //   onTap: () => Scrollable.ensureVisible(dataKey.currentContext),
                      //   //   child: new Text("Scroll to data"),
                      //   // ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
