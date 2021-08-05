import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'height_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeightLight(
            counter: AnimatedCounter(
              value: 119,
              text: 'K+',
            ),
            label: 'Subscribers',
          ),
          HeightLight(
            counter: AnimatedCounter(
              value: 40,
              text: '+',
            ),
            label: 'Videos',
          ),
          HeightLight(
            counter: AnimatedCounter(
              value: 30,
              text: '+',
            ),
            label: 'Github Projects',
          ),
          HeightLight(
            counter: AnimatedCounter(
              value: 13,
              text: 'K+',
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}
