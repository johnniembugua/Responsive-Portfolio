import 'package:flutter/material.dart';
import 'package:portfolio_website/models/recommendation.dart';

import '../../../constants.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: RecommendationCard(
                        recommendation: demoRecommendations[index],
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
