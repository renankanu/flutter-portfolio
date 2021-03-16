import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyDrawer extends StatefulWidget {
  final Function onPressAbout;
  final Function onPressSkill;
  final Function onPressRepo;
  final Function onPressXp;
  const MyDrawer({
    Key key,
    this.onPressAbout,
    this.onPressSkill,
    this.onPressRepo,
    this.onPressXp,
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
                child: FaIcon(
                  FontAwesomeIcons.times,
                  size: 24,
                  color: MyColors.magicMint,
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.onPressAbout();
                },
                child: Text(
                  AppLocalizations.of(context).about,
                  style: TextStyle(color: MyColors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.onPressSkill();
                },
                child: Text(
                  'Skills',
                  style: TextStyle(color: MyColors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.onPressRepo();
                },
                child: Text(
                  AppLocalizations.of(context).repository,
                  style: TextStyle(color: MyColors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.onPressXp();
                },
                child: Text(
                  AppLocalizations.of(context).experience,
                  style: TextStyle(color: MyColors.white, fontSize: 18),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    '${AppLocalizations.of(context).copyright} ${DateTime.now().year} ${AppLocalizations.of(context).renanKanu}',
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
