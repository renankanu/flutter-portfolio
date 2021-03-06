import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    @required bool isHovering,
    @required Function onHover,
    @required Function onPress,
    @required IconData icon,
  })  : _isHovering = isHovering,
        _onHover = onHover,
        _onPress = onPress,
        _icon = icon,
        super(key: key);

  final bool _isHovering;
  final Function _onHover;
  final Function _onPress;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onPress,
      onHover: (value) {
        _onHover(value);
      },
      child: FaIcon(
        _icon,
        color: _isHovering ? MyColors.magicMint : MyColors.silver,
        size: 36,
      ),
    );
  }
}
