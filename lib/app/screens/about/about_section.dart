import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/utils/images.dart';
import 'dart:js' as js;

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
      constraints: BoxConstraints(
          maxWidth: 960, minHeight: MediaQuery.of(context).size.height),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              'Sobre mim -----',
              style: TextStyle(
                  fontFamily: 'FiraCode',
                  fontSize: 36,
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
                          'Olá, meu nome é Renan sou de Cianorte-PR. Comecei na programação em 2016 como desenvolvedor Android Nativo com Java, em 2018 comecei a programar Android Nativo com Kotlin, PHP e trabalhei com alguns serviços da AWS como: eC2, RDS, SNS, SES, S3... E no segundo semestre de 2019 comecei a programar em React Native e Flutter na Megaleios e estou até o momento.',
                          style: TextStyle(
                            fontFamily: 'FiraCode',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: MyColors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Gosto de todos os assuntos que envolvem tecnologia, jogador de rugby, gosto de jogos eletrônicos, praticante de musculação e estudande de inglês. Café, café e café ☕',
                          style: TextStyle(
                            fontFamily: 'FiraCode',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: MyColors.white,
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialButton(
                              isHovering: _isHovering[0],
                              onPress: () => js.context.callMethod('open', [
                                'https://www.facebook.com/renan.santos.92123'
                              ]),
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
                              onPress: () => js.context.callMethod(
                                  'open', ['https://github.com/renankanu']),
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
                              onPress: () => js.context.callMethod('open', [
                                'https://www.linkedin.com/in/renansantosbr/'
                              ]),
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
