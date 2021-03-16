import 'package:flutter/material.dart';
import 'package:port_dart/app/components/base_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:port_dart/app/screens/experience/components/desc_xp.dart';
import 'package:port_dart/app/screens/experience/components/row_xp.dart';
import 'package:port_dart/app/utils/colors.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  AppLocalizations.of(context).experience,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: MyColors.vistaBlue),
                ),
                Container(
                  width: 80,
                  height: 6,
                  color: MyColors.magicMint,
                ),
                SizedBox(height: 16),
                Text(
                  AppLocalizations.of(context).prevCurrentWork,
                  style: TextStyle(
                    color: MyColors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            RowXp(
              time: AppLocalizations.of(context).actualWorkDate,
              ocupation: AppLocalizations.of(context).mobileDeveloper,
              company: 'MEGALEIOS',
              itemXp: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DescXp(label: AppLocalizations.of(context).expMegaOne),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).expMegaTwo),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).expMegaThree),
                  SizedBox(height: 6),
                ],
              ),
            ),
            SizedBox(height: 24),
            RowXp(
              time: AppLocalizations.of(context).oldWork,
              ocupation:
                  '${AppLocalizations.of(context).mobileDeveloper} / ${AppLocalizations.of(context).fullStack}',
              company: 'SISTERRA',
              itemXp: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DescXp(label: AppLocalizations.of(context).oldExpOne),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpTwo),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpThree),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpFour),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpFive),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpSix),
                  SizedBox(height: 6),
                  DescXp(label: AppLocalizations.of(context).oldExpSeven),
                  SizedBox(height: 6),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
