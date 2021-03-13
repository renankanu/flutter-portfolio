import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/menu_item.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyAppBar extends StatefulWidget {
  final Function onPressAbout;
  final Function onPressSkill;
  final Function onPressRepo;
  final Function onPressXp;

  const MyAppBar(
      {Key key,
      this.onPressAbout,
      this.onPressSkill,
      this.onPressRepo,
      this.onPressXp})
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
            Row(
              children: [
                MenuItem(
                  title: AppLocalizations.of(context).about,
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
                  title: AppLocalizations.of(context).repository,
                  onHolver: (value) {
                    setState(() {
                      _isHovering[2] = value;
                    });
                  },
                  onPress: widget.onPressRepo,
                  isHolver: _isHovering[2],
                ),
                SizedBox(width: 10),
                MenuItem(
                  title: AppLocalizations.of(context).experience,
                  onHolver: (value) {
                    setState(() {
                      _isHovering[3] = value;
                    });
                  },
                  onPress: widget.onPressXp,
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
