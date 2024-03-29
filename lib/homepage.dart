import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:portfolio1/components/animated_text_container.dart';
import 'package:portfolio1/components/hover_container.dart';
import 'package:portfolio1/components/linear_gradient_text.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final headingActualTextSize = screenWidth * 0.05;
    final bodyActualTextSize = screenWidth * 0.01;
    const double minTextSize = 50.0;
    const double maxTextSize = 100.0;
    const double bodyminTextSize = 30.0;
    const double bodymaxTextSize = 55.0;
    final double fontSizeToSet =
        headingActualTextSize.clamp(minTextSize, maxTextSize);
    final double bodyfontSizeToSet =
        bodyActualTextSize.clamp(bodyminTextSize, bodymaxTextSize);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Container(
            width: 1400,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.headphones,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1, 0),
                          child: Text(
                            'utkarsh shrivastava',
                            style: GoogleFonts.dancingScript(
                              textStyle: const TextStyle(color: Colors.white),
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'hello world\nthis is',
                      style: GoogleFonts.sourceCodePro(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: const AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: LgText(
                        text: "utkarsh shrivastava", fontsize: fontSizeToSet),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: const AlignmentDirectional(-1, 0),
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'an upcoming full stack flutter developer from India, who loves to try hands on open-source ♡ and a part time game developer',
                      style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 25,
                ),
                LgText(text: "Projects", fontsize: bodyfontSizeToSet),
                const SizedBox(
                  height: 25,
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowPadding: const EdgeInsets.all(30),
                  columnPadding: const EdgeInsets.all(30),
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  children: const [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/E-commerce.png',
                        gitLink: 'https://github.com/Utkarsh4517/Flutter_E-commerce',
                        link: '',
                        title: 'Full Stack E-commerce app (development)',
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/portfolio.png',
                        gitLink: 'https://github.com/Utkarsh4517/Portfolio',
                        link: '',
                        title: 'Personal Portfolio',
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/weatherastic.png',
                        gitLink: 'https://github.com/Utkarsh4517/Weatherastic',
                        link: 'https://guileless-cassata-ad27ca.netlify.app/',
                        title: 'Weather App',
                      ),
                    ),
                  ],
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowPadding: const EdgeInsets.all(30),
                  columnPadding: const EdgeInsets.all(30),
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  children: const [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/unity.jpeg',
                        gitLink: '',
                        link: '',
                        title: 'Fun Arcade Game made with Unity (alpha)',
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/comingsoon.png',
                        gitLink: '',
                        link: '',
                        title: 'Coming Soon!',
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: HoverContainer(
                        width: 410,
                        height: 280,
                        imagePath: 'assets/imag/comingsoon.png',
                        gitLink: '',
                        link: '',
                        title: 'Coming Soon!',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child:
                          LgText(text: 'Connect', fontsize: bodyfontSizeToSet),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            launchUrlString('https://github.com/Utkarsh4517');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            launchUrlString('https://twitter.com/codeittutkarsh');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            launchUrlString('https://www.linkedin.com/in/utkarsh-shrivastava-7339041a0/');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
