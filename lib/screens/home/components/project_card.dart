import 'package:flutter/material.dart';
import 'package:flutter_profile/models/project.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () async {
              project.url == null ? null : launchMyURL(project.url!);
            },
            child: Text(
              project.url == null
                  ? "Will Be Live Soon"
                  : project.url!.contains('web.app')
                      ? Responsive.isMobile(context) ||
                              Responsive.isMobileLarge(context) ||
                              Responsive.isTablet(context)
                          ? 'Tap To View Web App'
                          : 'Click To View Web App'
                      : Responsive.isMobile(context) ||
                              Responsive.isMobileLarge(context) ||
                              Responsive.isTablet(context)
                          ? "Tap Here To View On App/Play Store"
                          : "Click Here To View On App/Play Store",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
