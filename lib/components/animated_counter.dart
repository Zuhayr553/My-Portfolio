import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$text",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: primaryColor,
            fontSize: Responsive.isMobileLarge(context) ? 10 : 15),
      ),
    );
  }
}
