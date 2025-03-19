import 'package:flutter/material.dart';
import 'rating_star.dart';

import 'rating_star_model.dart';

class StarScore extends StatefulWidget {
  const StarScore({
    super.key,
  });

  @override
  State<StarScore> createState() => _StarScoreState();
}

int _indexRate = 4;

class _StarScoreState extends State<StarScore> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return RatingStar(
          model: RatingStarModel(
            index: index,
            rate: _indexRate,
            onTap: () {
              setState(() {
                _indexRate = index + 1;
              });
            },
          ),
        );
      }),
    );
  }
}
