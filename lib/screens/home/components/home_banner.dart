import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

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
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withValues(alpha: 0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have A Look At My Portolio and My Amazing Journey As A Flutter Developer!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      launchMyURL("https://wa.me/4368864030768");
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "Contact Me",
                      style: TextStyle(color: darkColor),
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

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.headlineMedium!,
      maxLines: 2,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text(""),
          Responsive.isMobile(context)
              ? Text("")
              : Expanded(child: AnimatedText()),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
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
          "Flutter Developer With Almost Three Years Of Experience",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Over 12 Live Apps On Google and Apple Store",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "State Management Expertise With Riverpod, Provider and Getx",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Using Clean Architecture Principles To Maintain A Scalable, Maintainable, And Testable Codebase.",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Utilized TDD Practices To Ensure Robust And Reliable Code, Improving The Overall Quality And Maintainability Of The Applications.",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Developed and integrated label printing functionality within Flutter applications, enabling direct communication with printers using native Kotlin code.",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "From Creating Beautiful Animations To Implementing In-App Purchases",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Built Multi Social, E-Commerce, Chat and Entertainment Apps",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "An Individual With A Strong Urge To Learn And Strive",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
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
        text: "<",
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
