import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
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
            Text(
              'Experiências',
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
              'Trabalhos anteriores e atuais',
              style: TextStyle(
                color: MyColors.white,
              ),
            ),
            SizedBox(height: 60),
            RowXp(
              time: 'Set. de 2019 - atual',
              ocupation: 'Mobile Developer',
              company: 'MEGALEIOS',
              itemXp: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DescXp(
                      label:
                          '-> Desenvolvimento Mobile utilizando React Native e Flutter;'),
                  SizedBox(height: 6),
                  DescXp(
                      label: '-> Publicação dos APP nas lojas Android e iOS;'),
                  SizedBox(height: 6),
                  DescXp(
                      label:
                          '-> Refatoração e implmentação de novas features;'),
                  SizedBox(height: 6),
                ],
              ),
            ),
            SizedBox(height: 24),
            RowXp(
              time: 'Jul. de 2016 - Set. de 2019',
              ocupation: 'Mobile Developer / FullStack',
              company: 'SISTERRA',
              itemXp: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DescXp(
                      label:
                          '-> Desenvolvimento de aplicativos para Android nativo (Java e Kotlin);'),
                  SizedBox(height: 6),
                  DescXp(
                      label:
                          '-> Desenvolvimento de aplicações em PHP utilizando DDD para back-end;'),
                  SizedBox(height: 6),
                  DescXp(label: '-> Usando APIs REST;'),
                  SizedBox(height: 6),
                  DescXp(label: '-> Controle de versão com GIT;'),
                  SizedBox(height: 6),
                  DescXp(label: '-> Conhecimento em Docker;'),
                  SizedBox(height: 6),
                  DescXp(
                      label:
                          '-> Conhecimento em AWS (Lambda, SNS, SQS, SES, EC2, RDS, S3);'),
                  SizedBox(height: 6),
                  DescXp(label: '-> Usuário Linux (GNU / Linux Ubuntu);'),
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
