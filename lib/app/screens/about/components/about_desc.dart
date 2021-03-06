import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_dart/app/screens/about/components/social_button.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'dart:js' as js;

class AboutDesc extends StatefulWidget {
  const AboutDesc({
    Key key,
    @required List isHovering,
  })  : _isHovering = isHovering,
        super(key: key);

  final List _isHovering;

  @override
  _AboutDescState createState() => _AboutDescState();
}

class _AboutDescState extends State<AboutDesc> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                isHovering: widget._isHovering[0],
                onPress: () => js.context.callMethod(
                    'open', ['https://www.facebook.com/renan.santos.92123']),
                onHover: (value) {
                  setState(() {
                    widget._isHovering[0] = value;
                  });
                },
                icon: FontAwesomeIcons.facebookSquare,
              ),
              SizedBox(width: 20),
              SocialButton(
                isHovering: widget._isHovering[1],
                onPress: () => js.context
                    .callMethod('open', ['https://github.com/renankanu']),
                onHover: (value) {
                  setState(() {
                    widget._isHovering[1] = value;
                  });
                },
                icon: FontAwesomeIcons.github,
              ),
              SizedBox(width: 20),
              SocialButton(
                isHovering: widget._isHovering[2],
                onPress: () => js.context.callMethod(
                    'open', ['https://www.linkedin.com/in/renansantosbr/']),
                onHover: (value) {
                  setState(() {
                    widget._isHovering[2] = value;
                  });
                },
                icon: FontAwesomeIcons.linkedin,
              ),
            ],
          )
        ],
      ),
    );
  }
}
