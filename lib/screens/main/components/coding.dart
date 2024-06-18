import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

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
            "Coding",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.96,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Kotlin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML / CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "JavaScript",
        ),
      ],
    );
  }
}
