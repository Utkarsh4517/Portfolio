import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:portfolio1/components/linear_gradient_text.dart';

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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 250,
                              width: 400,
                              padding: const EdgeInsets.all(20),
                              child: Card(
                                elevation: 50,
                                shadowColor:
                                    const Color.fromARGB(255, 173, 19, 201),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                              ),
                            ),
                            Container(
                              height: 250,
                              width: 400,
                              padding: const EdgeInsets.all(20),
                              child: Card(
                                elevation: 50,
                                shadowColor:
                                    const Color.fromARGB(255, 173, 19, 201),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                              ),
                            ),
                            Container(
                              height: 250,
                              width: 400,
                              padding: const EdgeInsets.all(20),
                              child: Card(
                                elevation: 50,
                                shadowColor:
                                    const Color.fromARGB(255, 173, 19, 201),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                              ),
                            ),
                          ],
                        ),
                      ],
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
