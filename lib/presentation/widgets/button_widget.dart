import 'package:flutter/material.dart';

import '../../core/colors/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/font_weight.dart';


class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required this.text,
      required this.containerColor,
      required this.fun,
      required this.width,
      required this.height,

      })
      : super(key: key);
  final String text;
  final Color containerColor;
  final Function() fun;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: containerColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text, style:  GoogleFonts.poppins(
          textStyle: TextStyle(
            fontWeight: bold,
            fontSize: 15,
            color: whiteFFFFFFColor,
          ),
        ),
          ),
        ),
      ),
    );
  }
}
