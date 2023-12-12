import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../../core/constants/font_weight.dart';
import 'button_widget.dart';
import 'custom_text.dart';

class DialogBox extends StatelessWidget {
  final String text;
  final String? name;
  final String secname;
  final Function() fun;

  const DialogBox(
      {Key? key,
      required this.text,
      required this.name,
      required this.secname,
      required this.fun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      title: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "$svgAssetsBasePath/Sticker.svg",
                ),),
          ),
         // Sticker.svg
          SizedBox(
            height: 10,
          ),
          CustomText(
              text: text, size: 14, clr: black000000Color, fontWeight: semiBold),
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            name!,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: normal,
                color: lightGrey757575Color,
                fontSize: 10,
              ),
            ),
          ),
          // RichText(
          //     text: TextSpan(children: [
          //       TextSpan(
          //           text: name!,
          //           style: GoogleFonts.poppins(
          //             textStyle: TextStyle(
          //               fontWeight: normal,
          //               color: lightGrey757575Color,
          //               fontSize: 11,
          //             ),
          //           )),
          //       TextSpan(
          //           text: name2??"",
          //           style: GoogleFonts.poppins(
          //             textStyle: TextStyle(
          //               fontWeight: normal,
          //               color: lightGrey757575Color,
          //               fontSize: 11,
          //             ),
          //           )),
          //
          //     ])),
          SizedBox(
            height: 20,
          ),
          ButtonWidget(
            text: secname,
            containerColor: orangeFEBB22Color,
            fun: fun,
            width: 95,
            height: 45,
          ),
        ],
      ),
    );

  }
}
