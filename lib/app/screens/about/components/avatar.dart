import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/images.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Image.asset(MyImages.meTwo),
      ),
    );
  }
}
