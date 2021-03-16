import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/components/base_container.dart';
import 'package:port_dart/app/components/custom_modal.dart';
import 'package:port_dart/app/model/type_skill.dart';
import 'package:port_dart/app/screens/skills/components/icon_skill.dart';
import 'package:port_dart/app/screens/skills/components/modal_skill.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SkillSection extends StatelessWidget {
  void openModal(BuildContext context, TypeSkill skill) {
    SkillDescription _nameSkill = getSkill(context, skill);
    CustomModal.animateModal(
      context,
      bodyModal: ModalSkill(
        title: _nameSkill.title,
        description: _nameSkill.description,
      ),
    );
  }

  SkillDescription getSkill(BuildContext context, TypeSkill type) {
    switch (type) {
      case TypeSkill.flutter:
        return SkillDescription(
            'Flutter', AppLocalizations.of(context).flutterSkill);
      case TypeSkill.rn:
        return SkillDescription(
            'React Native', AppLocalizations.of(context).rnSkill);
      case TypeSkill.js:
        return SkillDescription(
            'JavaScript', AppLocalizations.of(context).jsSkill);
      case TypeSkill.ts:
        return SkillDescription(
            'TypeScript', AppLocalizations.of(context).tsSkill);
      case TypeSkill.php:
        return SkillDescription('PHP', AppLocalizations.of(context).phpSkill);
      case TypeSkill.git:
        return SkillDescription('Git', AppLocalizations.of(context).gitSkill);
      case TypeSkill.googlePlay:
        return SkillDescription(
            'Google Play', AppLocalizations.of(context).googlePlaySkill);
      case TypeSkill.appleStore:
        return SkillDescription(
            'Apple Store', AppLocalizations.of(context).googlePlaySkill);
      case TypeSkill.docker:
        return SkillDescription(
            'Docker', AppLocalizations.of(context).dockerSkill);
      case TypeSkill.aws:
        return SkillDescription('Aws', AppLocalizations.of(context).awsSkill);
      default:
        return SkillDescription('', '');
    }
  }

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
                    onPress: () {
                      openModal(context, TypeSkill.flutter);
                    },
                    isPng: true,
                    iconPng: MyImages.flutter,
                    icon: FontAwesomeIcons.react,
                    label: 'Flutter',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.rn);
                    },
                    icon: FontAwesomeIcons.react,
                    label: 'React Native',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.js);
                    },
                    icon: FontAwesomeIcons.js,
                    label: 'JavaScript',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.ts);
                    },
                    isPng: true,
                    iconPng: MyImages.ts,
                    icon: FontAwesomeIcons.react,
                    label: 'TypeScript',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.php);
                    },
                    icon: FontAwesomeIcons.php,
                    label: 'Php',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.git);
                    },
                    icon: FontAwesomeIcons.gitAlt,
                    label: 'Git',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.googlePlay);
                    },
                    icon: FontAwesomeIcons.googlePlay,
                    label: 'Google Play',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.appleStore);
                    },
                    icon: FontAwesomeIcons.appStoreIos,
                    label: 'Apple Store',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.docker);
                    },
                    icon: FontAwesomeIcons.docker,
                    label: 'Docker',
                  ),
                  IconSkill(
                    onPress: () {
                      openModal(context, TypeSkill.aws);
                    },
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
