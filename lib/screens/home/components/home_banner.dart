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
          "Expert Flutter Developer with 3+ Years of Experience Delivering Production-Ready Apps",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Built and Launched Over 12 Apps on Google Play and App Store",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Mastered State Management with Riverpod, Bloc, and GetX for Scalable Architectures",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Utilized GoRouter and Flutter Hooks to Enhance Routing and Performance",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Implemented Clean Architecture to Ensure Maintainable and Testable Codebases",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Integrated Firebase, Supabase, Stripe, and Native SDKs for Complex Features",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Built Localization-Ready Apps Using Flutter Intl (l10n) Supporting Globalization",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Applied TDD and CI/CD to Maintain High-Quality, Production-Ready Code",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Specialized in Multi-Platform UI: Mobile, Tablet, Web, and Desktop Using Custom Breakpoints",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Hands-on Experience with Native Kotlin/Swift Integration via Platform Channels",
          textStyle: Theme.of(context).textTheme.headlineSmall,
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Driven Developer with Strong Focus on Performance, Modularity, and Developer Experience",
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
