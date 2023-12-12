import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final double size;
  final String text;
  final FontWeight fontWeight;
  final Color  clr;

  const CustomText(
      {Key? key,
      required this.text,
      required this.size,
      required this.clr,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: fontWeight,
          color: clr,
          fontSize: size,
        ),
      ),
    );
  }
}
