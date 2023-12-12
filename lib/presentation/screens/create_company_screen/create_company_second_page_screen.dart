import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/logic/cubit/create_company_cubit/create_company_cubit.dart';
import 'package:hpn_pay/presentation/widgets/app_easy_loading.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/font_weight.dart';
import '../../widgets/custom_textfield.dart';

class CreateCompanySecondePageScreen extends StatefulWidget {
  final String? name;
  final String? mailName;
  final String? address;
  final String? state;
  final String? city;
  final String? pinCode;
  final String? telephone;
  final String? mobile;

  const CreateCompanySecondePageScreen({
    super.key,
    this.name,
    this.mailName,
    this.address,
    this.state,
    this.city,
    this.pinCode,
    this.telephone,
    this.mobile,
  });

  @override
  State<CreateCompanySecondePageScreen> createState() =>
      _CreateCompanySecondePageScreenState();
}

class _CreateCompanySecondePageScreenState
    extends State<CreateCompanySecondePageScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController websiteAddressController =
      TextEditingController();
  final TextEditingController gstNumberController = TextEditingController();
  final TextEditingController licenseNameController = TextEditingController();
  final TextEditingController licenseNumberController = TextEditingController();
  final TextEditingController panCardController = TextEditingController();
  final TextEditingController telephoneController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  List<Widget> textFields = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                commonText("Company details", black000000Color, 18, bold),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    commonText("Email address", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Enter email',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Website address", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: websiteAddressController,
                  hintText: 'Website address',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("GST Number", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: gstNumberController,
                  hintText: 'Enter GST number',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("License Name", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: licenseNameController,
                  hintText: 'License Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("License Number", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: licenseNumberController,
                  hintText: 'License Number',
                ),
                const SizedBox(height: 10),
                Column(
                  children: textFields,
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomButton(
                    onPress: () {
                      // Add a new TextField when the button is clicked
                      setState(() {
                        textFields.add(
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                            child: Row(
                              children: [
                                commonText("License Name", darkBlue, 14, medium),
                                commonText("*", redE74C3CColor, 14, normal),
                              ],
                            ),
                          ),
                        );
                        textFields.add(
                          CustomFormField(
                            // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            inputType: TextInputType.text,
                            controller: licenseNameController,
                            hintText: 'License Name',
                          ),
                        );
                        textFields.add(
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Row(
                              children: [
                                commonText("License Number", darkBlue, 14, medium),
                                commonText("*", redE74C3CColor, 14, normal),
                              ],
                            ),
                          ),
                        );
                        textFields.add(
                          CustomFormField(
                            // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            inputType: TextInputType.text,
                            controller: licenseNumberController,
                            hintText: 'License Number',
                          ),
                        );
                      });
                    },
                    borderRadius: 8,
                    width: 120,
                    height: 30,
                    text: 'Add License',
                    textColor: whiteFFFFFFColor,
                    backgroundColor: darkBlue,
                    textSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    commonText("Pan card Number", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: panCardController,
                  hintText: 'Pan card number',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: lightGrey757575Color,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        commonText("Back", lightGrey757575Color, 14, medium),
                      ],
                    ),
                    const Spacer(),
                    Container(),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                BlocListener<CreateCompanyCubit, CreateCompanyState>(
                  listener: (context, state) {
                    if(state is CreateCompanyLoading){
                      easyLoadingShowProgress(status:  "Loading...");
                    }else if(state is CreateCompanySuccess){
                      easyLoadingDismiss(withDismiss: true);
                      print("successssssssssssssss");
                    }else if(state is CreateCompanyError){
                      print("errrrrr");
                      easyLoadingShowError(state.message);
                    }
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      onPress: () {
                        context.read<CreateCompanyCubit>().createCompanyCubit(
                            name: widget.name,
                            mailName: widget.mailName,
                            address: widget.address,
                            state: widget.state,
                            city: widget.city,
                            pinCode: widget.pinCode,
                            telephone: widget.telephone,
                            mobile: widget.mobile,
                            email: emailController.text.trim(),
                            website: websiteAddressController.text.trim(),
                            gstNumber: gstNumberController.text.trim(),
                            licenseName: licenseNameController.text.trim(),
                            licenseNumber: licenseNumberController.text.trim(),
                            panNumber: panCardController.text.trim());
                      },
                      height: 40,
                      width: 160,
                      backgroundColor: darkBlue,
                      text: 'Submit',
                      textColor: whiteFFFFFFColor,
                      borderRadius: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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

class CustomButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? textSize;
  final Widget? child;
  final double? elevation;
  final EdgeInsetsGeometry? padding; // Added padding property

  const CustomButton({
    super.key,
    this.onPress,
    this.text,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.width,
    this.borderRadius,
    this.textSize = 16.0,
    this.child,
    this.elevation,
    this.padding, // Added padding property
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 0,
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      color: backgroundColor,
      child: InkWell(
        onTap: onPress,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          padding: padding,
          // Apply padding, default to null if not provided
          child: child ??
              Text(
                text ?? '',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: textSize,
                ),
              ),
        ),
      ),
    );
  }
}
