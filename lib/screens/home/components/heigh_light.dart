import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(label!,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: Responsive.isMobileLarge(context) ? 8 : 13)),
      ],
    );
  }
}
