import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class BuildCustomSearch extends StatefulWidget {
  const BuildCustomSearch({super.key});

  @override
  _BuildCustomSearchState createState() => _BuildCustomSearchState();
}

class _BuildCustomSearchState extends State<BuildCustomSearch> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  final TextEditingController _controller = TextEditingController();

  Future<void> _logSearchEvent(String searchQuery) async {
    if (searchQuery.isNotEmpty) {
      await analytics.logEvent(
        name: 'search_performed',
        parameters: {
          'query': searchQuery,
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.2),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.grey)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.grey)),
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
      ),
      onFieldSubmitted: _logSearchEvent, // تسجيل الحدث عند الضغط على Enter
    );
  }
}
