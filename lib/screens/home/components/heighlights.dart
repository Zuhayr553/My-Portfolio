import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Metasense Technologies",
                      ),
                      label: "Sep 2022 - Sep 2023",
                    ),
                    const Spacer(),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Apps Knight",
                      ),
                      label: "Aug 2022 - Sep 2022",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 8,
                        text: "Kawonki Innovations",
                      ),
                      label: "Jan 2022 - May 2022",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 6,
                        text: "App Spot",
                      ),
                      label: "Aug 2021 - Dec 2021",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //  Text(, style: Theme.of(context).textTheme.subtitle2),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "Metasense Technologies",
                  ),
                  label: "Sep 2022 - Sep 2023",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "Apps Knight",
                  ),
                  label: "Aug 2022 - Sep 2022",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "Kawonki Innovations",
                  ),
                  label: "Jan 2022 - May 2022",
                ),
                HeighLight(
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
