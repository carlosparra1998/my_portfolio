import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/h.dart';

import '../widgets/about_me.dart';
import '../widgets/awards.dart';
import '../widgets/footer.dart';
import '../widgets/main_presentation.dart';
import '../widgets/portfolio.dart';
import '../widgets/stats.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  color: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 31, 19, 53),
                          Color.fromARGB(255, 62, 39, 105),
                          Color.fromARGB(255, 31, 19, 53),
                        ],
                      ),
                    ),
                    width: double.infinity,
                    height: 140,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(children: [
                        MainPresentation(),
                        const AboutSection(),
                        const H(90),
                        const Awards(),
                        const H(120),
                        const Portfolio(),
                        const H(20),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 28.0),
                          child: ShowStats(),
                        ),
                        const H(20),
                        const Footer()
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
