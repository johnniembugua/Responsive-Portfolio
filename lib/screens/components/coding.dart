import 'package:flutter/material.dart';
import '../../constants.dart';
import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.89,
          label: 'dart',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: 'python',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.72,
          label: 'java',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.63,
          label: 'Javascript',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.48,
          label: 'R',
        ),
      ],
    );
  }
}
