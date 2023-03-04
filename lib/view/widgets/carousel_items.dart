import 'package:flutter/material.dart';
import '../../model/classes/carousel_item_model.dart';
import '../../model/classes/utility.dart';
import '../../utils/constants.dart';
import '../../utils/strings.dart';
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
                      Strings.completeName,
                      style: GoogleFonts.roboto( 
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28.0),
                    ),
                    const SizedBox(
                      height: 11.0,
                    ),
                    Text(
                      Strings.job,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 203, 52, 230),
                          fontSize: 25.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 500,
                      child: Text(
                        Strings.phrase,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 24.0),
                      ),
                    ),
                    const SizedBox(
                      height: 45.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Utilty.openUrl(Strings.githubPageURL);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          Strings.download,
                          style: GoogleFonts.roboto(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 27.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Image.asset(Strings.emailPhotoPath),
                            iconSize: 40,
                            onPressed: () {
                              Utilty.openUrl(
                                  'mailto:carlosfcoparra@hotmail.com');
                            },
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          IconButton(
                            icon: Image.asset(Strings.linkedinPhotoPath),
                            iconSize: 40,
                            onPressed: () {
                              Utilty.openUrl(
                                  'https://www.linkedin.com/in/carlos-francisco-parra-garc%C3%ADa-9b16941b5');
                            },
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          IconButton(
                            icon: Image.asset(Strings.githubPhotoPath),
                            iconSize: 40,
                            onPressed: () {
                              Utilty.openUrl(
                                  'https://github.com/carlosparra1998');
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
        ),
        image: CircleAvatar(
          radius: 150,
          child: ClipOval(
            child: Image.asset(
              Strings.myPhoto,
              fit: BoxFit.cover,
              width: 300, // x2 (twice) the radius of CircleAvatar
              height: 300, // x2 (twice) the radius of CircleAvatar
            ),
          ),
        ),
      ),
    );
