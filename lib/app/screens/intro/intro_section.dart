import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:port_dart/app/app_bloc.dart';
import 'package:port_dart/app/screens/components/custom_image.dart';
import 'package:port_dart/app/screens/intro/components/terminal.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

import '../../utils/colors.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key key}) : super(key: key);

  @override
  _IntroSectionState createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  final _appBloc = Modular.get<AppBloc>();
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[MyColors.magicMint, MyColors.vistaBlue],
    ).createShader(new Rect.fromLTWH(10.0, 100.0, 600.0, 100.0));

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            children: [
              Text(AppLocalizations.of(context).helloWorld),
              StreamBuilder<Locale>(
                stream: _appBloc.locale,
                builder: (context, snapshot) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          _appBloc.setMessage(
                              Locale.fromSubtags(languageCode: 'pt'));
                        },
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  height: 24,
                                  width: 36,
                                  child: CustomImageNetwork(
                                    imageUrl:
                                        'https://cdn.jsdelivr.net/npm/country-flags@0.0.2/flags/brazil.gif',
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                color: snapshot.data.toString() == 'pt'
                                    ? MyColors.transparente
                                    : MyColors.background.withOpacity(0.8),
                                height: 24,
                                width: 38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          _appBloc.setMessage(
                              Locale.fromSubtags(languageCode: 'en'));
                        },
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  height: 24,
                                  width: 36,
                                  child: CustomImageNetwork(
                                    imageUrl:
                                        'https://cdn.jsdelivr.net/npm/country-flags@0.0.2/flags/united_states_of_america.gif',
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                color: snapshot.data.toString() != 'pt'
                                    ? MyColors.transparente
                                    : MyColors.background.withOpacity(0.8),
                                height: 24,
                                width: 38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '<Renan Kanu>',
                  style: TextStyle(
                      fontSize: ResponsiveWidget.isSmallScreen(context)
                          ? 40
                          : ResponsiveWidget.isMediumScreen(context)
                              ? 80
                              : 120,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()..shader = linearGradient),
                ),
                SizedBox(height: 60),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: MyColors.magicMint,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      AppLocalizations.of(context).mobileDeveloper,
                      style: TextStyle(
                        color: MyColors.background,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Terminal()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
