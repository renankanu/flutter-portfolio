import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/images.dart';

import '../../utils/colors.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  List _isHovering = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 960),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              'Sobre mim -----',
              style: TextStyle(
                  fontFamily: 'FiraCode',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: MyColors.vistaBlue),
            ),
            SizedBox(height: 80),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(MyImages.meTwo),
                  ),
                ),
                SizedBox(width: 80),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Olá, meu nome é Renan e moro em Cianorte-PR. Comecei na programação em 2016 como desenvolvedor Android Nativo com Java, em 2018 comecei a programar Android Nativo com Kotlin, PHP e trabalhei com alguns serviços da AWS como: eC2, RDS, SNS, SES, S3... E no segundo semestre de 2019 comecei a programar em React Native e Flutter na Megaleios e estou até o momento.',
                          style: TextStyle(
                            fontFamily: 'FiraCode',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: MyColors.white,
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialButton(
                              isHovering: _isHovering[0],
                              onHover: (value) {
                                setState(() {
                                  _isHovering[0] = value;
                                });
                              },
                              icon: FontAwesomeIcons.facebookSquare,
                            ),
                            SizedBox(width: 20),
                            SocialButton(
                              isHovering: _isHovering[1],
                              onHover: (value) {
                                setState(() {
                                  _isHovering[1] = value;
                                });
                              },
                              icon: FontAwesomeIcons.github,
                            ),
                            SizedBox(width: 20),
                            SocialButton(
                              isHovering: _isHovering[2],
                              onHover: (value) {
                                setState(() {
                                  _isHovering[2] = value;
                                });
                              },
                              icon: FontAwesomeIcons.linkedin,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    @required bool isHovering,
    @required Function onHover,
    @required IconData icon,
  })  : _isHovering = isHovering,
        _onHover = onHover,
        _icon = icon,
        super(key: key);

  final bool _isHovering;
  final Function _onHover;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
