import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_dart/app/screens/home/home_section.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await DotEnv.load();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  final String token = DotEnv.env['GITHUB_TOKEN'];

  final HttpLink httpLink = HttpLink('https://api.github.com/graphql');

  Locale _locale;

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  Locale get locale {
    return _locale;
  }

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
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        locale: _locale,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('pt', 'BR'),
        ],
        debugShowCheckedModeBanner: false,
        title: 'Renan Kanu',
        theme: ThemeData(
            textTheme: GoogleFonts.firaCodeTextTheme(
          Theme.of(context).textTheme,
        )),
        home: Center(
            child: Banner(
          message: 'Flutter',
          color: MyColors.vistaBlue,
          location: BannerLocation.topEnd,
          child: HomeSection(),
        )),
      ),
    );
  }
}
