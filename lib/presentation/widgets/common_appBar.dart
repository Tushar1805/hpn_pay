import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_weight.dart';
import '../../core/colors/app_colors.dart';
import '../../core/constants/assets_base_path.dart';
import '../routers/app_router.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  final List<Widget>? actions;
  const CommonAppbar({
    Key? key,
    required this.text,
    this.actions
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 0.0,
      titleSpacing: 0,
      leading: InkWell(
          onTap: (){
            AppRouter.navigatorKey.currentState?.pop();
          },
          child:Icon(
              Icons.arrow_back_rounded,
              size: 30,
              color: black000000Color
          )
      ),
      title: Text(
        text!,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: black000000Color,
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
