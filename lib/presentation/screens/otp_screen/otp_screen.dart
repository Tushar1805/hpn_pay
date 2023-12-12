import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/presentation/widgets/app_easy_loading.dart';
import 'package:pinput/pinput.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/assets_base_path.dart';
import '../../../core/constants/font_weight.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../logic/cubit/Internet/internet_cubit.dart';
import '../../../logic/cubit/get_all_company_cubit/get_all_company_cubit.dart';
import '../../../logic/cubit/otp_cubit/otp_cubit.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../admin_dashboard/admin_dashboard_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                const SizedBox(height: 20,),
                // 'Admin Login'.text.size(34).color(primaryColor).bold.make(),
                commonText("Admin Login",darkBlue, 32, bold),
                const SizedBox(height: 20,),
                Image.asset(
                  '$pngAssetsBasePath/logo.png', height: 279, width: 189,),
                // const SizedBox(height: 20,),
                 Align(
                  alignment: Alignment.topLeft,
                  child: commonText("Enter OTP",darkBlue, 18, semiBold),),
                const SizedBox(height: 10,),
                Center(
                  child: Pinput(
                    length: 6,
                    // focusNode: _focusNode,
                    closeKeyboardWhenCompleted: true,
                    submittedPinTheme: PinTheme(
                        width: 56,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: blue009DC4Color))),
                    focusedPinTheme: PinTheme(
                        width: 56,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: blue009DC4Color))),
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 50,
                      textStyle: GoogleFonts.spaceGrotesk(
                          color: black000000Color,
                          fontWeight: bold,
                          fontSize: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: greyWhiteE7DFDFColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    controller: otpController,

                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    // onCompleted: (pin) => print(pin),
                  ),
                ),
                const SizedBox(height: 20,),
                // BlocListener<OtpCubit, OtpState>(
                //   listener: (context, state) {
                //     if(state is OtpLoading){
                //       easyLoadingDismiss(withDismiss: true);
                //       easyLoadingShowProgress(status: "Loading...");
                //     }else if(state is OtpSuccess){
                //       easyLoadingDismiss(withDismiss: true);
                //         Navigator.push(
                //           context,
                //           // MaterialPageRoute(builder: (context) => Demo()),);
                //           MaterialPageRoute(
                //               builder: (context) => BlocProvider(
                //                 create: (context) => GetAllCompanyCubit(
                //                     context.read<InternetCubit>(),
                //                     context.read<AuthRepository>()),
                //                 child: AdminDashboardScreen(),
                //               )),
                //         );
                //     }else if(state is OtpError) {
                //       easyLoadingShowError(state.message);
                //     }
                //     },
                //   child: CustomButton(
                //     onPress: () {
                //       // final otp =  int.parse(otpController.text.trim());
                //       // print( otp.runtimeType);
                //       context.read<OtpCubit>().otpCubit( otp: otpController.text.trim());
                //     },
                //     borderRadius: 4,
                //     height: 48,
                //     width: double.infinity,
                //     text: 'GET OTP',
                //     textColor: Colors.white,
                //     backgroundColor: darkBlue,
                //   ),
                // ),

                CustomButton(
                  onPress: () {
                            Navigator.push(
                              context,
                              // MaterialPageRoute(builder: (context) => Demo()),);
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                    create: (context) => GetAllCompanyCubit(
                                        context.read<InternetCubit>(),
                                        context.read<AuthRepository>()),
                                    child: AdminDashboardScreen(),
                                  )),
                            );
                  },
                  borderRadius: 4,
                  height: 48,
                  width: double.infinity,
                  text: 'Verify',
                  textColor: Colors.white,
                  backgroundColor: darkBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text commonText(text, color,double size, weight,) => Text(text,style: GoogleFonts.poppins(
    textStyle: TextStyle(color: color, fontSize: size, fontWeight: weight)
  ),);
}
