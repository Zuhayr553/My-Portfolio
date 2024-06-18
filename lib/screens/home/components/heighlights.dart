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
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Mark.One",
                      ),
                      label: "March 2024 - Present",
                    ),
                    const Spacer(),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "JAN3",
                      ),
                      label: "December 2023 - February 2024",
                    ),
                    const Spacer(),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Metasense Technologies",
                      ),
                      label: "Sep 2022 - Sep 2023",
                    ),
                    const Spacer(),
                    Highlights(
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
                    Highlights(
                      counter: AnimatedCounter(
                        value: 8,
                        text: "Kawonki Innovations",
                      ),
                      label: "Jan 2022 - May 2022",
                    ),
                    Highlights(
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
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Mark.One ",
                      ),
                      label: "March 2024 - Present",
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "JAN3",
                      ),
                      label: "December 2023 - February 2024",
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Metasense Technologies",
                      ),
                      label: "Sep 2022 - Sep 2023",
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "Apps Knight",
                      ),
                      label: "Aug 2022 - Sep 2022",
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "Kawonki Innovations",
                      ),
                      label: "Jan 2022 - May 2022",
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "App Spot",
                      ),
                      label: "Aug 2021 - Dec 2021",
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
