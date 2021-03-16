import 'package:flutter/material.dart';
import 'package:port_dart/app/app_bloc.dart';
import 'package:port_dart/app/components/custom_image.dart';
import 'package:port_dart/app/utils/colors.dart';

class Flags extends StatelessWidget {
  const Flags({
    Key key,
    @required AppBloc appBloc,
  })  : _appBloc = appBloc,
        super(key: key);

  final AppBloc _appBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<Locale>(
        stream: _appBloc.locale,
        builder: (context, snapshot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 20,
                width: 29,
                child: Material(
                  child: InkWell(
                    onTap: () {
                      _appBloc
                          .setMessage(Locale.fromSubtags(languageCode: 'pt'));
                    },
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: CustomImageNetwork(
                              imageUrl: 'https://flagcdn.com/h20/br.png',
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            color: snapshot.data.toString() == 'pt'
                                ? MyColors.transparente
                                : MyColors.background.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 20,
                width: 38,
                child: Material(
                  child: InkWell(
                    onTap: () {
                      _appBloc
                          .setMessage(Locale.fromSubtags(languageCode: 'en'));
                    },
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: CustomImageNetwork(
                              imageUrl: 'https://flagcdn.com/h20/us.png',
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            color: snapshot.data.toString() != 'pt'
                                ? MyColors.transparente
                                : MyColors.background.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
