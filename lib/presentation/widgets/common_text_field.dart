import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../../core/constants/font_weight.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController textController;

  final String type;

  final String hintText;
  final bool suffix;
  bool? readOnly;

  final obsecure;
  void Function(String value)? onChanged;
  CommonTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.type,
      required this.suffix,
      this.obsecure,this.onChanged,this.readOnly})
      : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late bool obSecure;

  @override
  void initState() {
    super.initState();
    obSecure = widget.obsecure;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textController,
      cursorColor: black101010Color,
      readOnly: widget.readOnly ?? false,
      keyboardType: widget.type == "time"
          ? TextInputType.datetime
          : widget.type == "number"
              ? TextInputType.number
              : widget.type == "email"
                  ? TextInputType.emailAddress
                  : TextInputType.text,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: normal,
          fontSize: 14,
        ),
      ),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontWeight: normal,
            fontSize: 10,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greyWhiteE7DFDFColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
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
                    ? SvgPicture.asset(
                        "$svgAssetsBasePath/eye_off.svg",
                        fit: BoxFit.scaleDown,
                        color: greyDark828282Color,
                        height: 20,
                        width: 20,
                      )
                    : Icon(
                        Icons.remove_red_eye_sharp,
                        size: 20,
                        color: greyDark828282Color,
                      ))
            : const SizedBox.shrink(),
      ),
      obscureText: obSecure,
    );
  }
}
