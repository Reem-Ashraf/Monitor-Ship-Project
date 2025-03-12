import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'build_search_result.dart';

class SearchScreen extends SearchDelegate {
  // TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.

  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          buildResults(context);
        },
        icon: const Icon(Icons.search),
        color: Colors.black54);
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildGridView();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildGridView();
  }

  Widget buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(6),
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 2.4 / 4.0,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(4.0),
          child: BuildSearchResult(),
        );
      },
    );
  }
}
