import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final Function onHolver;
  final Function onPress;
  final bool isHolver;

  const MenuItem(
      {Key key, this.onHolver, this.isHolver, this.title, this.onPress})
      : super(key: key);
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: widget.onHolver,
      onTap: widget.onPress,
      child: Container(
        height: 30,
        child: Stack(
          children: [
            Align(
              child: Text(
                widget.title,
                style: TextStyle(
                    color:
                        widget.isHolver ? MyColors.vistaBlue : MyColors.white,
                    fontFamily: 'FiraCode'),
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: widget.isHolver,
                child: Container(
                  height: 2,
                  width: 20,
                  color: MyColors.vistaBlue,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
