import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/model/classes/utility.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../model/classes/technology.dart';
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
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        Strings.aboutMe,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 62, 190, 66),
                            fontSize: 22.0),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        Strings.description,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 173, 172, 172),
                            fontSize: 19.0),
                      ),
                      /*RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                "Trabajo de Fin de Grado más innovador por parte de la Fundación Campollano (2022).",
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 173, 172, 172),
                                fontSize: 19.0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Utilty.openUrl(
                                    "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber");
                              }),
                      ])),*/
                      const SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        Strings.tech,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 252, 252, 252),
                            fontSize: 19.0),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        Strings.mobileDev,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 173, 172, 172),
                            fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
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
                                .map((e) => MouseRegion(
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
                                                  style: const TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        Strings.otherTech,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 173, 172, 172),
                            fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
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
                                .map((e) => MouseRegion(
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
                                                  style: const TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25.0,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
