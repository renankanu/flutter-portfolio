import 'package:flutter/material.dart';
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
                    icon: MyImages.flutter,
                    label: 'Flutter',
                  ),
                  IconSkill(
                    icon: MyImages.reactNative,
                    label: 'React Native',
                  ),
                  IconSkill(
                    icon: MyImages.js,
                    label: 'JavaScript',
                  ),
                  IconSkill(
                    icon: MyImages.ts,
                    label: 'TypeScript',
                  ),
                  IconSkill(
                    icon: MyImages.php,
                    label: 'Php',
                  ),
                  IconSkill(
                    icon: MyImages.git,
                    label: 'Versionamento Git',
                  ),
                  IconSkill(
                    icon: MyImages.googlePlay,
                    label: 'Google Play',
                  ),
                  IconSkill(
                    icon: MyImages.appleStore,
                    label: 'Apple Store',
                  ),
                  IconSkill(
                    icon: MyImages.docker,
                    label: 'Docker',
                  ),
                  IconSkill(
                    icon: MyImages.aws,
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
