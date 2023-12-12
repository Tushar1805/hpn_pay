// import 'package:admin_demo/screens/company_dashboard/components/help_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/core/constants/assets_base_path.dart';
import 'package:hpn_pay/presentation/screens/admin_dashboard/admin_dashboard_screen.dart';
// import 'package:flutter/screens/admin_dashboard/help_details.dart';
import 'package:hpn_pay/presentation/screens/admin_dashboard/help_details.dart';
import 'package:hpn_pay/presentation/widgets/custom_button.dart';
// import 'package:admin_demo/constants/app_colors.dart';
// import 'package:admin_demo/custom_widgets/custom_button.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/font_weight.dart';

class AdminDrawerWidget extends StatelessWidget {
  const AdminDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 250,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                '$pngAssetsBasePath/logo.png',
                height: 279,
                width: 189,
              ),
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/dashboard_icon.png',
                height: 40,
                width: 40,
              ),
              // title: 'Dashboard'.text.bold.size(16).make(),
              title: commonText("Dashboard",darkBlue, 16, normal),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              // onTap:(){
              //    Navigator.push(context, MaterialPageRoute(builder:
              //    (context)=> const HelpDetails(),));
              // },
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: commonText("Help",darkBlue, 16, normal),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpDetails(),
                    ));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/logout_icon.png',
                height: 40,
                width: 40,
              ),
              title: commonText("Logout",darkBlue, 16, normal),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  commonText("Found an bug?",black000000Color, 20, normal),
                SizedBox(height: 5,),
                  commonText("Report now to us if you find any bugs",black000000Color, 20, normal),
                  SizedBox(height: 15,),
                  CustomButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminDashboardScreen()),
                      );
                    },
                    width: double.infinity,
                    borderRadius: 8,
                    backgroundColor: const Color.fromARGB(255, 0, 17, 207),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('$pngAssetsBasePath/report_icon.png'),
                        SizedBox(height: 5,),
                        commonText("Report",black000000Color, 16, normal),
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ));
  }
  Text commonText(text, color,double size, weight,) => Text(text,style: GoogleFonts.poppins(
      textStyle: TextStyle(color: color, fontSize: size, fontWeight: weight)
  ),);
}
