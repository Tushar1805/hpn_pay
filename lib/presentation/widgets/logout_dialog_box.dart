import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../../core/constants/font_weight.dart';
import 'button_widget.dart';

class LogoutDialogBox extends StatelessWidget {
  final String text;
  final String? name;
  final String yes;
  final String no;
  final Function() fun;
  final Function() fun2;

  const LogoutDialogBox(
      {Key? key,
        required this.text,
        required this.name,
        required this.yes,
        required this.no,
        required this.fun,
        required this.fun2,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      title: Column(
        children: [
          SvgPicture.asset(
             "$svgAssetsBasePath/warning2.svg",
           ),
          SizedBox(
            height: 10,
          ),

          Text(
            textAlign: TextAlign.center,
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: bold,
                color: black000000Color,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            name!,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: semiBold,
                color: lightGrey757575Color,
                fontSize: 9,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [


              Expanded(
                child:NoButton(text: no,
                  //"Login",
                  containerColor: whiteFFFFFFColor,
                  fun: fun2,
                  width: 110,
                  height: 40, )
                ,),

              SizedBox(width: 10,),
              Expanded(
                child: ButtonWidget(
                  text: yes,
                  //"Login",
                  containerColor: orangeFEBB22Color,
                  fun: fun,
                  width: 110,
                  height: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget NoButton(
      {required String text,
         required Color containerColor,
        required Function() fun,
        required double width,
        required double height}) {
    return InkWell(
      onTap: fun,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: orangeFEBB22Color),
            color: containerColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text, style:  GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: bold,
              fontSize: 15,
              color: orangeFEBB22Color,
            ),
          ),
          ),
        ),
      ),
    );
  }
}
