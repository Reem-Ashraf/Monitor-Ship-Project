import 'package:flutter/material.dart';

import 'build_custom_search.dart';

class HomeSearchBody extends StatelessWidget {
  const HomeSearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //showSearch(context: context, delegate: SearchScreen());
                    },
                    child: const AbsorbPointer(
                      child: BuildCustomSearch(),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu_sharp))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
