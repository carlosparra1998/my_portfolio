// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/model/classes/utility.dart';
import 'package:my_portfolio/utils/global_resources.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/widgets/h.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/constants.dart';

class Awards extends StatefulWidget {
  const Awards({Key? key}) : super(key: key);
  @override
  State<Awards> createState() => _Awards();
}

class _Awards extends State<Awards> {
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
                        translate.awards,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 62, 190, 66),
                          fontSize: 22.0,
                        ),
                      ),
                      const H(18),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: translate.tfgAwardTitle,
                              style: GoogleFonts.roboto(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 173, 172, 172),
                                fontSize: 19.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Utilty.openUrl(AppConstants.tfgAwardURL);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
