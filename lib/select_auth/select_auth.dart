import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAuthPage extends StatefulWidget {
  const SelectAuthPage({super.key});

  @override
  State<SelectAuthPage> createState() => _SelectAuthPageState();
}

class _SelectAuthPageState extends State<SelectAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFF6B57),
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Stack(children: [
            Image.asset('assets/pitzza_selectauth.png')
                .animate()
                .scale(delay: 200.ms, duration: 400.ms),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/lineselect_auth.png',
                  width: 400,
                  color: const Color(0xFF242731).withOpacity(0.08),
                )),
            Positioned(
                left: 30,
                bottom: 150,
                child: Text(
                  'I don\'t feel like\ncooking. Let\'s\norder food\n delivery.',
                  style: GoogleFonts.getFont('Poppins').copyWith(
                    color: const Color(0xFF242731),
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                )),
            Positioned(
              bottom: 40,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 28),
                            height: 54,
                            decoration: ShapeDecoration(
                              color:
                                  Colors.white.withOpacity(0.20999999344348907),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text("Sign Up",
                                  style: GoogleFonts.getFont('Poppins')
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 28),
                            height: 54,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF242731),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text("Log in",
                                  style: GoogleFonts.getFont('Poppins')
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
