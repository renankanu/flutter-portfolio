import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
import 'package:port_dart/app/screens/skills/components/icon_skill.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/images.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: MyColors.vistaBlue),
                ),
                Container(
                  width: 80,
                  height: 6,
                  color: MyColors.magicMint,
                ),
              ],
            ),
            SizedBox(height: 80),
            Center(
              child: Wrap(
                spacing: 60,
                runSpacing: 60,
                children: <Widget>[
                  IconSkill(
                    isPng: true,
                    iconPng: MyImages.flutter,
                    icon: FontAwesomeIcons.react,
                    label: 'Flutter',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.react,
                    label: 'React Native',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.js,
                    label: 'JavaScript',
                  ),
                  IconSkill(
                    isPng: true,
                    iconPng: MyImages.ts,
                    icon: FontAwesomeIcons.react,
                    label: 'TypeScript',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.php,
                    label: 'Php',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.gitAlt,
                    label: 'Versionamento Git',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.googlePlay,
                    label: 'Google Play',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.appStoreIos,
                    label: 'Apple Store',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.docker,
                    label: 'Docker',
                  ),
                  IconSkill(
                    icon: FontAwesomeIcons.aws,
                    label: 'Aws',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
