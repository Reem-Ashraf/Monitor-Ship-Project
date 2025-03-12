import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.deepPurpleAccent,
            ),
            const SizedBox(width: 8),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Abdelrhman",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              RatingBarIndicator(
                rating: 4,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.indigoAccent,
                ),
                itemCount: 5,
                itemSize: 15,
              ),
            ]),
            const Spacer(),
            Text(
              "9m ago",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            )
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const Text(
          "I'm very happy with order, It was delivered on and good quality. Recommended!",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
