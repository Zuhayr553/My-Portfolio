import 'package:flutter/material.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    print('wWIDTHHHH ${MediaQuery.of(context).size.width}');
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width < 1300 ? 12 : 16,
            ),
          ),
          Text(
            text!,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width < 1300 ? 12 : 16,
            ),
          ),
        ],
      ),
    );
  }
}
