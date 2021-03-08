import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:port_dart/app/graphql/queries.dart';

class RepositorySection extends StatefulWidget {
  const RepositorySection({Key key}) : super(key: key);

  @override
  _RepositorySectionState createState() => _RepositorySectionState();
}

class _RepositorySectionState extends State<RepositorySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Query(
          options: QueryOptions(document: gql(Queries.pinnedRepo)),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return Text('Loading');
            }

            List repositories = result.data['viewer']['pinnedItems']['nodes'];

            print(result.data['viewer']['pinnedItems']['nodes']);
            print(repositories);
            return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: repositories.length,
                itemBuilder: (context, index) {
                  final repository = repositories[index];
                  return Text(repository['name']);
                });
          },
        ),
      ],
    );
  }
}
