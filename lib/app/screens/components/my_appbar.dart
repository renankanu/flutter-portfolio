import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/menu_item.dart';
import 'package:port_dart/app/utils/colors.dart';

class MyAppBar extends StatefulWidget {
  final Function onPressAbout;
  final Function onPressSkill;

  const MyAppBar({Key key, this.onPressAbout, this.onPressSkill})
      : super(key: key);
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  List<bool> _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColors.background, boxShadow: [
        BoxShadow(
            color: Colors.black, offset: Offset(0.0, 2.0), blurRadius: 6.0)
      ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
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
            Row(
              children: [
                MenuItem(
                  title: 'Sobre',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: widget.onPressAbout,
                  isHolver: _isHovering[0],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Skills',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[1] = value;
                    });
                  },
                  onPress: widget.onPressSkill,
                  isHolver: _isHovering[1],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Interesse',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[2] = value;
                    });
                  },
                  isHolver: _isHovering[2],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Experiência',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[3] = value;
                    });
                  },
                  isHolver: _isHovering[3],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
