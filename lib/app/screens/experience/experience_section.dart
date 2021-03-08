import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
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
            Text('Trabalhos anteriores e atuais'),
          ],
        ),
      ),
    );
  }
}
