import 'package:flutter/cupertino.dart';

import 'onBoarding_content.dart';
import 'on_boarding_model.dart';

class PageViewContent extends StatefulWidget {
  final Function(int) onPageChanged;

  const PageViewContent({super.key, required this.onPageChanged});

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
          widget.onPageChanged(index);
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              OnboardingContent(
                onboardingItem: onboardingData[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
