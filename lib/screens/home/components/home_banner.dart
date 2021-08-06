import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/dart2.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing \nDeveloper skills!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(height: defaultPadding / 2),
                MyBuiltAnimatedText(),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(
                        color: darkColor,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuiltAnimatedText extends StatelessWidget {
  const MyBuiltAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Theme.of(context).textTheme.subtitle1!,
        maxLines: 1,
        child: Row(
          children: [
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            Text('I build '),
            Responsive.isMobile(context)
                ? Expanded(child: AnimatedText())
                : AnimatedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(
                width: defaultPadding / 2,
              ),
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          ],
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'responsive web and mobile app.',
          speed: Duration(milliseconds: 100),
        ),
        TyperAnimatedText(
          'complete e-Commerce app UI',
          speed: Duration(milliseconds: 100),
        ),
        TyperAnimatedText(
          'Chat app with dark and light theme.',
          speed: Duration(milliseconds: 100),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'Android',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(
            text: '>',
          ),
        ],
      ),
    );
  }
}
