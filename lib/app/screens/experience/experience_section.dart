import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
import 'package:port_dart/app/screens/experience/components/desc_xp.dart';
import 'package:port_dart/app/screens/experience/components/dot.dart';
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
            Text(
              'Experiências',
              style: TextStyle(
                  fontFamily: 'FiraCode',
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
              'Trabalhos anteriores e atuais',
              style: TextStyle(
                fontFamily: 'FiraCode',
                color: MyColors.white,
              ),
            ),
            SizedBox(height: 60),
            RowXp(
              time: '2019 - atual',
              ocupation: 'Mobile Developer',
              company: 'MEGALEIOS',
              itemXp: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DescXp(
                      label:
                          '-> Desenvolvimento Mobile utilizando React Native e Flutter;'),
                  DescXp(
                      label: '-> Publicação dos APP nas lojas Android e iOS;'),
                  DescXp(
                      label: '-> Refatoração e implmentação de novas features;')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
