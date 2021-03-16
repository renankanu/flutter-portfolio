import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class ModalSkill extends StatelessWidget {
  final String title;
  final String description;

  const ModalSkill({Key key, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: MyColors.magicMint,
            ),
          ),
          SizedBox(height: 20),
          Text(description,
              style: TextStyle(
                color: MyColors.vistaBlue,
              )),
        ],
      ),
    );
  }
}
