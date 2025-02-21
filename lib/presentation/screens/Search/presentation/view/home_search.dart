import 'package:flutter/material.dart';
import 'widget/home_search_body.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeSearchBody(),
    );
  }
}
