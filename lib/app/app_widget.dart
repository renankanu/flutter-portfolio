import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:port_dart/app/app_bloc.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appBloc = Modular.get<AppBloc>();

  final String token = DotEnv.env['GITHUB_TOKEN'];

  final HttpLink httpLink = HttpLink('https://api.github.com/graphql');

  @override
  Widget build(BuildContext context) {
    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    final Link link = authLink.concat(httpLink);
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: InMemoryStore()),
        link: link,
      ),
    );
    return StreamBuilder<Locale>(
        stream: _appBloc.locale,
        initialData: Locale.fromSubtags(languageCode: 'pt'),
        builder: (context, snapshot) {
          return GraphQLProvider(
            client: client,
            child: MaterialApp(
              locale: snapshot.data,
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('pt', 'BR'),
                const Locale('en', 'US'),
              ],
              debugShowCheckedModeBanner: false,
              title: 'Renan Kanu',
              theme: ThemeData(
                textTheme: GoogleFonts.firaCodeTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
            ).modular(),
          );
        });
  }
}
