import 'package:flutter/cupertino.dart';

import 'build_dots.dart';
import 'onBoarding_content.dart';
import 'on_boarding_model.dart';

class PageViewContent extends StatefulWidget {
  const PageViewContent({super.key});

  @override
  State<PageViewContent> createState() => _PageViewContentState();
}

class _PageViewContentState extends State<PageViewContent> {
  final PageController _pageController = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        itemCount: onboardingData.length,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingContent(
            onboardingItem: onboardingData[index],
          );
        },
      ),
    );
  }
}
