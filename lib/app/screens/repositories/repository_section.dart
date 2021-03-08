import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:port_dart/app/graphql/queries.dart';
import 'package:port_dart/app/screens/components/base_container.dart';
import 'package:port_dart/app/screens/repositories/card_pinned.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

class RepositorySection extends StatefulWidget {
  const RepositorySection({Key key}) : super(key: key);

  @override
  _RepositorySectionState createState() => _RepositorySectionState();
}

class _RepositorySectionState extends State<RepositorySection> {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Repos Favoritos',
              style: TextStyle(
                  fontFamily: 'FiraCode',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: MyColors.vistaBlue),
            ),
            Container(
              width: 80,
              height: 6,
              color: MyColors.magicMint,
            ),
            Query(
              options: QueryOptions(document: gql(Queries.pinnedRepo)),
              builder: (QueryResult result,
                  {VoidCallback refetch, FetchMore fetchMore}) {
                if (result.hasException) {
                  return Text(result.exception.toString());
                }

                if (result.isLoading) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(
                        'Carregando repositorios',
                        style: TextStyle(
                            fontSize: 22,
                            color: MyColors.white,
                            fontFamily: 'FiraCode'),
                      ),
                    ),
                  );
                }

                List repositoriesPinned =
                    result.data['viewer']['pinnedItems']['nodes'];

                print(repositoriesPinned);
                return Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        runSpacing: 20,
                        spacing: 20,
                        children: repositoriesPinned.map((repo) {
                          var index = repositoriesPinned.indexOf(repo);
                          return CardPinned(
                            repo: repositoriesPinned[index],
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 40),
                      RichText(
                        text: TextSpan(
                          text: 'Total de commits -> ',
                          style: TextStyle(
                              color: MyColors.white,
                              fontFamily: 'FiraCode',
                              fontWeight: FontWeight.w200,
                              fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                              text: result.data['viewer']
                                      ['contributionsCollection']
                                      ['totalCommitContributions']
                                  .toString(),
                              style: TextStyle(
                                  color: MyColors.white,
                                  fontFamily: 'FiraCode',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
