// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/w.dart';
import '../../model/repositories/cache.dart';
import '../../utils/constants.dart';
import '../../utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ShowStats extends StatelessWidget {
  const ShowStats({super.key});

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
  return ResponsiveWrapper(
    maxWidth: width,
    minWidth: width,
    defaultScale: false,
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraint) {
        return Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: stats.map((stat) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              width: ScreenHelper.isMobile(context)
                  ? constraint.maxWidth / 2.0 - 20
                  : (constraint.maxWidth / 4.0 - 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    stat.count,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                  const W(10),
                  Text(
                    stat.text,
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      color: kCaptionColor,
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        );
      },
    ),
  );
}
