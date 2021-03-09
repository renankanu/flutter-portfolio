import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> with TickerProviderStateMixin {
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
        color: MyColors.menu,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Copyright © ${DateTime.now().year} Renan Kanu',
                      style: TextStyle(color: MyColors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Feito com Flutter 💙',
                      style: TextStyle(color: MyColors.white),
                    ),
                  ),
                ],
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
          ),
        ));
  }
}
