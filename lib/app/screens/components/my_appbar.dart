import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/menu_item.dart';
import 'package:port_dart/app/utils/colors.dart';

class MyAppBar extends StatefulWidget {
  final List<dynamic> isHovering;
  final Function onPressAbout;

  const MyAppBar({Key key, this.isHovering, this.onPressAbout})
      : super(key: key);
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
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
                      widget.isHovering[0] = value;
                    });
                  },
                  onPressAbout: widget.onPressAbout,
                  isHolver: widget.isHovering[0],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Skills',
                  onHolver: (value) {
                    setState(() {
                      widget.isHovering[1] = value;
                    });
                  },
                  isHolver: widget.isHovering[1],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Interesse',
                  onHolver: (value) {
                    setState(() {
                      widget.isHovering[2] = value;
                    });
                  },
                  isHolver: widget.isHovering[2],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: 'Experiência',
                  onHolver: (value) {
                    setState(() {
                      widget.isHovering[3] = value;
                    });
                  },
                  isHolver: widget.isHovering[3],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
