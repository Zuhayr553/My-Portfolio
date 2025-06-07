import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import '../../../constants.dart';
import 'highlights_widget.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          Highlights(
            counter: AnimatedCounter(
              value: 40,
              text: "GVS Austria",
            ),
            label: "September 2024 - Present",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 40,
              text: "Mark.One ",
            ),
            label: "March 2024 - July 2024",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 40,
              text: "JAN3",
            ),
            label: "December 2023 - February 2024",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 40,
              text: "Metasense",
            ),
            label: "Sep 2022 - Sep 2023",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 40,
              text: "Apps Knight",
            ),
            label: "Aug 2022 - Sep 2022",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 30,
              text: "Kawonki Innovations",
            ),
            label: "Jan 2022 - May 2022",
          ),
          SizedBox(width: defaultPadding / 2),
          Highlights(
            counter: AnimatedCounter(
              value: 13,
              text: "App Spot",
            ),
            label: "Aug 2021 - Dec 2021",
          ),
        ],
      ),
    );
  }
}
