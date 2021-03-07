import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
import 'package:port_dart/app/utils/colors.dart';

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              'Skills -----',
              style: TextStyle(
                  fontFamily: 'FiraCode',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: MyColors.vistaBlue),
            ),
          ],
        ),
      ),
    );
  }
}
