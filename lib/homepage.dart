import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_icons/awesome_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final headingActualTextSize = screenWidth * 0.05;
    const double minTextSize = 50.0;
    const double maxTextSize = 100.0;
    final double fontSizeToSet =
        headingActualTextSize.clamp(minTextSize, maxTextSize);
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
                const SizedBox(height: 25,),
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
                    child: Text(
                      "utkarsh shrivastava",
                      maxLines: 2,
                      // ignore: unnecessary_new
                      style: new TextStyle(
                        fontSize: fontSizeToSet,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: <Color>[
                              Colors.pinkAccent,
                              Colors.deepPurpleAccent,
                              Colors.red
                              //add more color here.
                            ],
                          ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 1000.0, 100.0),
                          ),
                      ),
                    ),
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
                const SizedBox(height: 25,),
                const Divider(color: Colors.white, thickness: 10,),
                const SizedBox(height: 25,),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
