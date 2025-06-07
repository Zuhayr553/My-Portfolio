import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Austria",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Vienna",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: _calculateAge(DateTime(2000, 04, 02)).toString(),
                    ),
                    AreaInfoText(
                      title: "Email",
                      text: "zuhayrnoor444@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Phone",
                      text: "+43 688 64030768",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () {
                        launchMyURL(
                            "https://drive.google.com/file/d/1stewJ_Kmw-RvZ9vEihUHJBgl5MMIThrI/view?usp=sharing");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "View Resume / CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launchMyURL(
                                  "https://www.linkedin.com/in/zuhayrnoor/");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchMyURL("https://github.com/Zuhayr553");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchMyURL("https://twitter.com/zuhayrstark");
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _calculateAge(DateTime birthDate) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }
}
