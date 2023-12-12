import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/font_weight.dart';

Widget defaultProfileImage({required double height, required double width, required String text}){
  return Container(
    height: height,
    width: width,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
        color: green95BF47Color,
        shape: BoxShape.circle),
    child: Text(
        text.isNotEmpty? text.substring(0,1).toUpperCase():"B",
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: normal,
          color: whiteFFFFFFColor,
          fontSize: 18,
        ),
      ),
    ),
    // child: Text(
    //   _getShortName(text),
    //   style: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //       fontWeight: normal,
    //       color: whiteFFFFFFColor,
    //       fontSize: 18,
    //     ),
    //   ),
    // ),
  );
}

// String _getShortName(String name) {
//   final words = name.split(" ");
//   if (words.length == 1) {
//     return words.first[0].toUpperCase();
//   } else if (words.length > 1) {
//     return words.first[0].toUpperCase() + words.last[0].toUpperCase();
//   } else {
//     return "B";
//   }
//}
