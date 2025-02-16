// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../utils/constants.dart';
import '../../utils/screen_helper.dart';
import 'carousel_items.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainPresentation extends StatelessWidget {
  final CarouselController carouselController = CarouselController();

  MainPresentation({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: carouselContainerHeight(context),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                viewportFraction: 1,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                height: carouselContainerHeight(context),
              ),
              items: List.generate(
                carouselItems(carouselContainerHeight(context)).length,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints: BoxConstraints(
                        minHeight: carouselContainerHeight(context),
                      ),
                      child: ScreenHelper(
                        desktop: _buildDesktop(
                          context,
                          carouselItems(carouselContainerHeight(context))[index]
                              .text,
                          carouselItems(carouselContainerHeight(context))[index]
                              .image,
                        ),
                        tablet: _buildTablet(
                          context,
                          carouselItems(carouselContainerHeight(context))[index]
                              .text,
                          carouselItems(carouselContainerHeight(context))[index]
                              .image,
                        ),
                        mobile: _buildMobile(
                          context,
                          carouselItems(carouselContainerHeight(context))[index]
                              .text,
                          carouselItems(carouselContainerHeight(context))[index]
                              .image,
                        ),
                      ),
                    );
                  },
                ),
              ).toList(),
            ),
          )
        ]));
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [Expanded(child: text), Expanded(child: image)],
      ),
    ),
  );
}

Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [Expanded(child: text), Expanded(child: image)],
      ),
    ),
  );
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}
