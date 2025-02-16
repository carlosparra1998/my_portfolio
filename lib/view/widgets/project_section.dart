import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/h.dart';

import '../../model/classes/project_model.dart';
import '../../model/classes/utility.dart';
import '../../utils/constants.dart';
import '../../utils/screen_helper.dart';
import '../../utils/strings.dart';

class ProjectSection extends StatelessWidget {
  final List<ProjectModel> projects;
  const ProjectSection({Key? key, required this.projects}) : super(key: key);

  Widget _buildUi(double width, BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context)
          .copyWith(scrollbars: false, dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: projects
              .map((e) => Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: _buildProject(width, e)))
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }
}

Center _buildProject(double width, ProjectModel projectModel) {
  return Center(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: width,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(144, 12, 12, 7),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                SizedBox(
                  width: ScreenHelper.isMobile(context)
                      ? width * 0.9
                      : width * 0.46,
                  child: Image.asset(
                    projectModel.appPhotos,
                    width: constraints.maxWidth > 720.0 ? null : 350.0,
                    height: 250,
                  ),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: ScreenHelper.isMobile(context)
                      ? width * 0.9
                      : width * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectModel.project,
                        style: GoogleFonts.roboto(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      const H(15),
                      Text(
                        projectModel.title,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 28.0,
                        ),
                      ),
                      const H(10),
                      Text(
                        projectModel.description,
                        style: GoogleFonts.roboto(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      const H(20),
                      projectModel.techUsed.isEmpty
                          ? Container()
                          : Text(
                              Strings.techUsed,
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                      Wrap(
                        children: projectModel.techUsed
                            .map((e) => Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 25,
                                  height: 25,
                                  child: Image.asset(e.logo),
                                ))
                            .toList(),
                      ),
                      const H(25),
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 48.0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 28.0,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Utilty.openUrl(projectModel.projectLink);
                                },
                                child: Center(
                                  child: Text(
                                    (projectModel.buttonText ?? "Explore MORE")
                                        .toUpperCase(),
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
