import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: MyColors.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'assets/images/close.png',
                  height: 24,
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                child: Text(
                  'Sobre',
                  style: TextStyle(
                      fontFamily: 'FiraCode',
                      color: MyColors.white,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                child: Text(
                  'Skills',
                  style: TextStyle(
                      fontFamily: 'FiraCode',
                      color: MyColors.white,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                child: Text(
                  'Interesse',
                  style: TextStyle(
                      fontFamily: 'FiraCode',
                      color: MyColors.white,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                child: Text(
                  'Experiência',
                  style: TextStyle(
                      fontFamily: 'FiraCode',
                      color: MyColors.white,
                      fontSize: 18),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | RenanKanu',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
