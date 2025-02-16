import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/global_resources.dart';
import 'package:my_portfolio/widgets/h.dart';
import 'package:my_portfolio/widgets/w.dart';
import '../../model/classes/carousel_item_model.dart';
import '../../model/classes/utility.dart';
import '../../utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

List<dynamic> carouselItems(double carouselContainerHeight) => List.generate(
      5,
      (index) => CarouselItemModel(
        text: SizedBox(
          height: carouselContainerHeight,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      translate.completeName,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    const H(11),
                    Text(
                      translate.job,
                      style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 203, 52, 230),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const H(10),
                    SizedBox(
                      width: 500,
                      child: Text(
                        translate.phrase,
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    const H(45),
                    GestureDetector(
                      onTap: () {
                        Utilty.openUrl(AppConstants.githubPageURL);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          translate.download,
                          style: GoogleFonts.roboto(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 27.0,
                          ),
                        ),
                      ),
                    ),
                    const H(25),
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(AppConstants.emailPhotoPath),
                          iconSize: 10,
                          onPressed: () {
                            Utilty.openUrl(AppConstants.mailTo);
                          },
                        ),
                        const W(40),
                        IconButton(
                          icon: Image.asset(AppConstants.linkedinPhotoPath),
                          iconSize: 10,
                          onPressed: () {
                            Utilty.openUrl(AppConstants.linkedinURL);
                          },
                        ),
                        const W(40),
                        IconButton(
                          icon: Image.asset(AppConstants.githubPhotoPath),
                          iconSize: 10,
                          onPressed: () {
                            Utilty.openUrl(AppConstants.githubMainURL);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        image: CircleAvatar(
          radius: 150,
          child: ClipOval(
            child: Image.asset(
              AppConstants.myPhoto,
              fit: BoxFit.cover,
              width: 300,
              height: 300,
            ),
          ),
        ),
      ),
    );
