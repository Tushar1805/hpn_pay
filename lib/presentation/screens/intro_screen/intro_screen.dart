import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/data/repositories/auth_repository.dart';
import 'package:hpn_pay/logic/cubit/Internet/internet_cubit.dart';
import 'package:hpn_pay/presentation/routers/app_router.dart';
import 'package:hpn_pay/presentation/widgets/app_easy_loading.dart';
import '../../../core/colors/app_colors.dart';
import '../../../core/constants/assets_base_path.dart';
import '../../../core/constants/font_weight.dart';
import '../../../logic/cubit/get_all_company_cubit/get_all_company_cubit.dart';
import '../../../logic/cubit/login_cubit/login_cubit.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../admin_dashboard/admin_dashboard_screen.dart';
import '../create_company_screen/create_company_screen.dart';
import '../dashboard/dashboard.dart';
import '../demo.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final TextEditingController phoneController = TextEditingController();

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
                // 100.heightBox,
                const SizedBox(
                  height: 100,
                ),
                // 'Admin Login'.text.size(34).color(primaryColor).bold.make(),
                InkWell(
                    onTap: () {
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
                    child: commonText("Admin Login", darkBlue, 32, bold)),
                // const SizedBox(height: 20,),
                // Container(color: Colors.red,child: Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: SvgPicture.asset("$svgAssetsBasePath/logo.svg"),
                // )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      // MaterialPageRoute(builder: (context) => MyHomePage()),);
                      MaterialPageRoute(
                          builder: (context) => CreateCompanyScreen()),
                    );
                  },
                  child: Image.asset(
                    '$pngAssetsBasePath/logo.png',
                    height: 279,
                    width: 189,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: commonText("Mobile Number", darkBlue, 16, semiBold),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.number,
                  controller: phoneController,
                  // label: 'Enter mobile no.',
                  hintText: 'Enter mobile no.',
                ),
                const SizedBox(
                  height: 20,
                ),
                // BlocListener<LoginCubit, LoginState>(
                //   listener: (context, state) {
                //     if (state is LoginLoading) {
                //       easyLoadingShowProgress(status: "Loading...");
                //       // const CircularProgressIndicator();
                //     } else if (state is LoginSuccess) {
                //       easyLoadingDismiss(withDismiss: true);
                //       AppRouter.navigatorKey.currentState
                //           ?.pushNamed(AppRouter.otpScreen);
                //     } else if (state is LoginError) {
                //       easyLoadingShowError(state.message);
                //     }
                //   },
                //   child: CustomButton(
                //     onPress: () {
                //       // final a =  int.parse(phoneController.text.trim());
                //       context
                //           .read<LoginCubit>()
                //           .loginAuthCubit(number: phoneController.text.trim());
                //     },
                //     borderRadius: 4,
                //     height: 48,
                //     width: double.infinity,
                //     text: 'GET OTP',
                //     textColor: Colors.white,
                //     backgroundColor: darkBlue,
                //   ),
                // )

                CustomButton(
                  onPress: () {
                    // final a =  int.parse(phoneController.text.trim());
                          AppRouter.navigatorKey.currentState?.pushNamed(AppRouter.otpScreen);
                  },
                  borderRadius: 4,
                  height: 48,
                  width: double.infinity,
                  text: 'GET OTP',
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

  Text commonText(
    text,
    color,
    double size,
    weight,
  ) =>
      Text(
        text,
        style: GoogleFonts.poppins(
            textStyle:
                TextStyle(color: color, fontSize: size, fontWeight: weight)),
      );
}
