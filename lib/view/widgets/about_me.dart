// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/widgets/h.dart';
import 'package:my_portfolio/widgets/w.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../model/repositories/cache.dart';
import '../../utils/constants.dart';
import '../../utils/strings.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);
  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const H(15),
                      Text(
                        Strings.aboutMe,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 62, 190, 66),
                          fontSize: 22.0,
                        ),
                      ),
                      const H(18),
                      Text(
                        Strings.description,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 173, 172, 172),
                          fontSize: 19.0,
                        ),
                      ),
                      const H(50),
                      Text(
                        Strings.tech,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 252, 252, 252),
                            fontSize: 19.0),
                      ),
                      const H(18),
                      Text(
                        Strings.mobileDev,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 173, 172, 172),
                            fontSize: 17.0),
                      ),
                      const H(18),
                      ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false, dragDevices: {
                          PointerDeviceKind.touch,
                          PointerDeviceKind.mouse,
                        }),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: TechnologyConstants.mobileLearned
                                .map(
                                  (e) => MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 6),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Center(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset(e.logo)),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                e.name,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      const H(25),
                      Text(
                        Strings.otherTech,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 173, 172, 172),
                          fontSize: 17.0,
                        ),
                      ),
                      const H(18),
                      ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false, dragDevices: {
                          PointerDeviceKind.touch,
                          PointerDeviceKind.mouse,
                        }),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: TechnologyConstants.generalLearned
                                .map(
                                  (e) => MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                          4.0,
                                        ),
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 6,
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Center(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Image.asset(e.logo),
                                              ),
                                              const W(10),
                                              Text(
                                                e.name,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const W(25),
              ],
            ),
          );
        },
      ),
    );
  }
}
