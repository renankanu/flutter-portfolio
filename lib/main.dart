import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/home/home_screen.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

void main() async {
  await DotEnv.load();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String token = DotEnv.env['GITHUB_TOKEN'];
  final HttpLink httpLink = HttpLink('https://api.github.com/graphql');
  @override
  Widget build(BuildContext context) {
    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $token',
      // OR
      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
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
        debugShowCheckedModeBanner: false,
        title: 'Renan Kanu',
        theme: ThemeData(),
        home: Center(
            child: Banner(
          message: 'Flutter',
          color: MyColors.vistaBlue,
          location: BannerLocation.topEnd,
          child: HomeScreen(),
        )),
      ),
    );
  }
}
