import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/core/constants/font_weight.dart';
import 'package:hpn_pay/presentation/widgets/app_easy_loading.dart';

import '../../../core/colors/app_colors.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../logic/cubit/Internet/internet_cubit.dart';
import '../../../logic/cubit/create_company_cubit/create_company_cubit.dart';
import '../../widgets/custom_textfield.dart';
import 'create_company_second_page_screen.dart';

class CreateCompanyScreen extends StatefulWidget {
  const CreateCompanyScreen({super.key});

  @override
  State<CreateCompanyScreen> createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends State<CreateCompanyScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController telephoneController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  String stateValue = "";
  String countryValue = "";
  String cityValue = "";
  String address = "";

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
                    commonText("Company name", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: nameController,
                  hintText: 'Company name',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Mailing name", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: mailNameController,
                  hintText: 'Mailing name',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Address", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: addressController,
                  hintText: 'Address',
                ),
                const SizedBox(
                  height: 10,
                ),
                CSCPicker(
                  layout: Layout.vertical,
                  flagState: CountryFlag.ENABLE,
                  onCountryChanged: (country){},
                  onStateChanged: (state){},
                  onCityChanged: (city){},
                  defaultCountry: CscCountry.India,
                  disableCountry: true,
                  countryDropdownLabel: "Country",
                  stateDropdownLabel: "State",
                  cityDropdownLabel: "City",
                  dropdownDialogRadius: 10,
                  searchBarRadius: 10,
                  disabledDropdownDecoration: BoxDecoration(color: whiteFFFFFFColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey.withOpacity(0.1))),
                ),
                // Row(
                //   children: [
                //     commonText("State", darkBlue, 14, medium),
                //     commonText("*", redE74C3CColor, 14, normal),
                //   ],
                // ),
                // const SizedBox(
                //   height: 5,
                // ),
                // CustomFormField(
                //   // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //   inputType: TextInputType.text,
                //   controller: stateController,
                //   hintText: 'State',
                // ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("City", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.text,
                  controller: cityController,
                  hintText: 'City',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Pincode", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.number,
                  controller: pincodeController,
                  hintText: 'Pincode',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Telephone number", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.number,
                  controller: telephoneController,
                  hintText: 'Telephone number',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonText("Mobile number", darkBlue, 14, medium),
                    commonText("*", redE74C3CColor, 14, normal),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomFormField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  inputType: TextInputType.number,
                  controller: mobileController,
                  hintText: 'Mobile number',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        if (nameController.text.trim() == "") {
                          easyLoadingShowError("Please enter name");
                        } else if (mailNameController.text.trim() == "") {
                          easyLoadingShowError("Please enter mail name");
                        } else if (addressController.text.trim() == "") {
                          easyLoadingShowError("Please enter address");
                        } else if (stateController.text.trim() == "") {
                          easyLoadingShowError("Please enter state");
                        } else if (cityController.text.trim() == "") {
                          easyLoadingShowError("Please enter city");
                        } else if (pincodeController.text.trim() == "") {
                          easyLoadingShowError("Please enter pincode");
                        } else if (telephoneController.text.trim() == "") {
                          easyLoadingShowError(
                              "Please enter telephone number");
                        } else if (mobileController.text.trim() == "") {
                          easyLoadingShowError("Please enter mobile number");
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider(
                                    create: (context) =>
                                        CreateCompanyCubit(
                                            context.read<AuthRepository>(),
                                            context.read<InternetCubit>()),
                                    child: CreateCompanySecondePageScreen(
                                      name: nameController.text.trim(),
                                      mailName: mailNameController.text
                                          .trim(),
                                      address: addressController.text.trim(),
                                      state: stateController.text.trim(),
                                      city: cityController.text.trim(),
                                      pinCode: pincodeController.text.trim(),
                                      telephone: telephoneController.text
                                          .trim(),
                                      mobile: mobileController.text.trim(),
                                    ),
                                  ),
                            ),
                          );
                        }
                      },
                      child: Row(
                        children: [
                          commonText("Next", black000000Color, 14, medium),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: black000000Color,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text commonText(text,
      color,
      double size,
      weight,) =>
      Text(
        text,
        style: GoogleFonts.poppins(
            textStyle:
            TextStyle(color: color, fontSize: size, fontWeight: weight)),
      );
}
