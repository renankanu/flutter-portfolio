import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/images.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this)
          ..repeat(reverse: true);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
  }

  final relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(0, 10, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 0, 0),
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: MyColors.menu,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Copyright © ${DateTime.now().year} Renan Kanu',
              style: TextStyle(fontFamily: 'FiraCode', color: MyColors.white),
            ),
            SizedBox(width: 100),
            Text(
              'Feito com Flutter 💙',
              style: TextStyle(fontFamily: 'FiraCode', color: MyColors.white),
            ),
            // Container(
            //   height: 80,
            //   width: 80,
            //   child: Stack(
            //     children: [
            //       PositionedTransition(
            //         rect: relativeRectTween.animate(controller),
            //         child: Container(
            //           width: 20,
            //           height: 20,
            //           child: Container(
            //             width: 20,
            //             height: 20,
            //             color: Colors.amber,
            //             child: FaIcon(
            //               FontAwesomeIcons.chevronUp,
            //               color: MyColors.white,
            //               size: 24,
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ));
  }
}
