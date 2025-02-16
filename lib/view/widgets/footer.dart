// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/h.dart';
import 'package:my_portfolio/widgets/w.dart';

import '../../model/repositories/cache.dart';
import '../../utils/constants.dart';
import '../../utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/strings.dart';



class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: footerItems
                      .map(
                        (footerItem) => MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: footerItem.onTap,
                            child: SizedBox(
                              width: ScreenHelper.isMobile(context)
                                  ? constraints.maxWidth / 2.0 - 20.0
                                  : constraints.maxWidth / 4.0 - 20.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        footerItem.iconData,
                                        color: kPrimaryColor,
                                        size: 28,
                                      ),
                                      const W(15),
                                      Text(
                                        footerItem.title,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const H(10),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "${footerItem.text1}\n",
                                          style: GoogleFonts.roboto(
                                            color: kCaptionColor,
                                            height: 1.8,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${footerItem.text2}\n",
                                          style: GoogleFonts.roboto(
                                            color: kCaptionColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const H(20),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      Strings.finalPhrase,
                      style: GoogleFonts.roboto(
                        color: kCaptionColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    ),
  );
}

class FooterItem {
  final IconData iconData;
  final String title;
  final String text1;
  final String text2;
  final VoidCallback? onTap;

  FooterItem({
    this.onTap,
    required this.iconData,
    required this.title,
    required this.text1,
    required this.text2,
  });
}
