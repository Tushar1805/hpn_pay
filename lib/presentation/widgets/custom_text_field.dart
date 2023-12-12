import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../../core/constants/font_weight.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textController;

  final String type;

  final String hintText;
  final bool suffix;
  final bool prefix;
  final String? prefixIcon;
  final obsecure;
  final bool? readonly;

  CustomTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.type,
      required this.suffix,
      required this.prefix,
      required this.prefixIcon,
      this.obsecure, this.readonly})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obSecure;

  @override
  void initState() {
    super.initState();
    obSecure = widget.obsecure;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: TextField(
        readOnly: widget.readonly ?? false,
        controller: widget.textController,
        cursorColor: black101010Color,
        keyboardType: widget.type == "time"
            ? TextInputType.datetime
            : widget.type == "number"
                ? TextInputType.number
                : widget.type == "email"
                    ? TextInputType.emailAddress
                    : TextInputType.text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontWeight: normal,
            fontSize: 14,
              color:  widget.readonly == true ?  greys777777Color : black000000Color
          ),
        ),
        decoration: InputDecoration(
          filled: widget.readonly == true ? true : false, //<-- SEE HERE
          fillColor: widget.readonly == true ?  whiteFFF5F5F5Color : Colors.transparent,
          hintText: widget.hintText,
          hintStyle:GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: normal,
              fontSize: 12,
            ),
          ),

          contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
          enabledBorder: const OutlineInputBorder(
           // borderRadius: BorderRadius.all(Radius.circular(10)),

            borderSide: BorderSide(
              color: greyWhiteE7DFDFColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
           // borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
            color: greyWhiteE7DFDFColor,
          )),
          suffixIcon: widget.suffix
              ? InkWell(
                  onTap: () {
                    setState(() {
                      obSecure = !obSecure;
                    });
                  },
                  child: obSecure
                      ? SvgPicture.asset("$svgAssetsBasePath/eye_off.svg",
                          fit: BoxFit.scaleDown,
                  color: greyDark828282Color,
                    height: 20,
                    width: 20,
                  )
                      : const Icon(
                          Icons.remove_red_eye_sharp,
                          size: 20,
                          color: greyDark828282Color,
                        ))
              : const SizedBox.shrink(),
          prefixIcon: widget.prefix ?
          SvgPicture.asset(widget.prefixIcon??"",
              fit: BoxFit.scaleDown)
              :const SizedBox.shrink(),
        ),
        obscureText: obSecure,
      ),
    );
  }
}
