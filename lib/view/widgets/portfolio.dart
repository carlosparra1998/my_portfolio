import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/model/repositories/cache.dart';
import 'package:my_portfolio/utils/global_resources.dart';
import 'package:my_portfolio/view/widgets/project_section.dart';
import 'package:my_portfolio/widgets/h.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            translate.portfolio,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 62, 190, 66),
                fontSize: 22.0),
          ),
          const H(10),
          Text(
            translate.workShow,
            style: GoogleFonts.roboto(
              color: Colors.grey[400],
              fontSize: 19,
            ),
          ),
          const H(18),
          ProjectSection(projects: projects),
        ],
      ),
    );
  }
}
