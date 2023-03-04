import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/model/classes/utility.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../model/classes/technology.dart';
import '../../model/repositories/cache.dart';
import '../../utils/constants.dart';
import '../../utils/strings.dart';

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
                        Strings.awards,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 62, 190, 66),
                            fontSize: 22.0),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                "Trabajo Fin de Grado (TFG) más innovador 2021-2022 de la Fundación Campollano",
                            style: GoogleFonts.roboto(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 173, 172, 172),
                                fontSize: 19.0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Utilty.openUrl(
                                    "https://www.uclm.es/es/noticias/noticias2022/octubre/albacete/premios_fcampollano");
                              }),
                      ])),
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
