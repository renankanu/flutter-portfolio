import 'package:flutter/material.dart';
import 'package:port_dart/app/app_bloc.dart';
import 'package:port_dart/app/screens/components/custom_image.dart';
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
                height: 24,
                width: 36,
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
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 24,
                width: 36,
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
// return Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               InkWell(
//                 onTap: () {
//                   _appBloc.setMessage(Locale.fromSubtags(languageCode: 'pt'));
//                 },
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                         padding: const EdgeInsets.all(1),
//                         child: Container(
//                           height: 24,
//                           width: 36,
//                           child: CustomImageNetwork(
//                             imageUrl:
//                                 'https://cdn.jsdelivr.net/npm/country-flags@0.0.2/flags/brazil.gif',
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Container(
//                         color: snapshot.data.toString() == 'pt'
//                             ? MyColors.transparente
//                             : MyColors.background.withOpacity(0.8),
//                         height: 24,
//                         width: 38,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 8),
//               InkWell(
//                 onTap: () {
//                   _appBloc.setMessage(Locale.fromSubtags(languageCode: 'en'));
//                 },
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                         padding: const EdgeInsets.all(1),
//                         child: Container(
//                           height: 24,
//                           width: 36,
//                           child: CustomImageNetwork(
//                             imageUrl:
//                                 'https://cdn.jsdelivr.net/npm/country-flags@0.0.2/flags/united_states_of_america.gif',
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Container(
//                         color: snapshot.data.toString() != 'pt'
//                             ? MyColors.transparente
//                             : MyColors.background.withOpacity(0.8),
//                         height: 24,
//                         width: 38,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
