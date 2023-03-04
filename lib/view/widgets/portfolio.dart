import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/model/repositories/cache.dart';
import 'package:my_portfolio/view/widgets/project_section.dart';

import '../../model/classes/project_model.dart';
import '../../model/repositories/cache.dart';
import '../../model/repositories/cache.dart';
import '../../utils/strings.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Strings.portfolio,
          style:GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 62, 190, 66),
              fontSize: 22.0),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Strings.workShow,
          style: GoogleFonts.roboto(
            color: Colors.grey[400],
            fontSize: 19,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        ProjectSection(
          projects: projects,
        ),
      ],
    ));
  }
}
