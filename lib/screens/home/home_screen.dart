import 'package:flutter/material.dart';

import 'package:portfolio_website/screens/main_screen.dart';

import 'components/highlights.dart';
import 'components/home_banner.dart';
import 'components/myprojects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}
