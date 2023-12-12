// // ignore_for_file: unused_import, must_be_immutable
//
// import 'package:flutter/material.dart';
// import 'package:hpn_pay/core/colors/app_colors.dart';
// import 'package:hpn_pay/presentation/widgets/common_text_field.dart';
// import 'package:hpn_pay/presentation/widgets/custom_button.dart';
// import 'package:hpn_pay/presentation/widgets/custom_text_asteric.dart';
// import 'package:hpn_pay/presentation/widgets/custom_textfield.dart';
// // import 'package:admin_demo/custom_widgets/custom_button.dart';
// // import 'package:admin_demo/custom_widgets/custom_text_asteric.dart';
// // import 'package:admin_demo/custom_widgets/custom_textfield.dart';
// // import 'package:admin_demo/routes/app_pages.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// class AdminCreateCompanyPage extends StatelessWidget {
//   AdminCreateCompanyPage({Key? key}) : super(key: key);
//
//   var companyNameController = TextEditingController();
//   var mailingNameController = TextEditingController();
//   var addressController = TextEditingController();
//   var stateController = TextEditingController();
//   var cityController = TextEditingController();
//   var pinCodeController = TextEditingController();
//   var telephoneNumberController = TextEditingController();
//   var mobileNumberController = TextEditingController();
//
//   var emailAddressController = TextEditingController();
//   var websiteAddressController = TextEditingController();
//   var gstNumberController = TextEditingController();
//   var licenseNameController = TextEditingController();
//   var licenseNumberController = TextEditingController();
//   var panCardController = TextEditingController();
//
//   final PageController _pageController = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: const Text('Company details').text.black.semiBold.make(),
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         elevation: 0,
//       ),
//       body: PageView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: _pageController,
//         children: [
//           firstFormPage(0),
//           secondFormPage(1),
//           // Add more pages as needed
//         ],
//       ),
//     );
//   }
//
//   Widget firstFormPage(int page) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomRichText(
//             text: 'Company name',
//             textColor: black101010Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: companyNameController,
//             label: 'Company name',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'Mailing Name',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: mailingNameController,
//             label: 'Mailing Name',
//           ),
//           6.heightBox,
//           CustomRichText(
//             text: 'Address',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: addressController,
//             label: 'Address',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'State',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: stateController,
//             label: 'State',
//           ),
//           6.heightBox,
//           CustomRichText(
//             text: 'City',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: cityController,
//             label: 'City',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'Pincode',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: pinCodeController,
//             label: 'Pincode',
//           ),
//           6.heightBox,
//           CustomRichText(
//             text: 'Telephone Number',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: telephoneNumberController,
//             label: 'Telephone Number',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'Mobile Number',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: companyNameController,
//             label: 'Mobile Number',
//           ),
//           6.heightBox,
//           Align(
//             alignment: Alignment.bottomRight,
//             child: SizedBox(
//               width: 80,
//               child: TextButton(
//                   onPressed: () {
//                     if (page < 1) {
//                       _pageController.nextPage(
//                         duration: const Duration(milliseconds: 500),
//                         curve: Curves.ease,
//                       );
//                     } else {
//                       // Handle form submission or navigation to the next screen
//                       // based on your app logic.
//                     }
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       'Next'.text.black.make(),
//                       3.widthBox,
//                       const Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.black,
//                         size: 12,
//                       )
//                     ],
//                   )),
//             ),
//           )
//         ],
//       ).p16(),
//     );
//   }
//
//   Widget secondFormPage(int page) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomRichText(
//             text: 'Email Address',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: emailAddressController,
//             label: 'Email Address',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'Website Address',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: websiteAddressController,
//             label: 'Website Address',
//           ),
//           6.heightBox,
//           CustomRichText(
//             text: 'GST Number',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: gstNumberController,
//             label: 'GST Number',
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'License Name',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: licenseNameController,
//             label: 'License Name',
//           ),
//           6.heightBox,
//           CustomRichText(
//             text: 'License Number',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: licenseNumberController,
//             label: 'License Number',
//           ),
//           10.heightBox,
//           const Align(
//             alignment: Alignment.bottomRight,
//             // child: CustomButton(
//             //   borderRadius: 8,
//             //   width: 120,
//             //   height: 30,
//             //   text: 'Add License',
//             //   textColor: Colors.white,
//             //   backgroundColor: black000000Color,
//             //   textSize: 12,
//             // ),
//           ),
//           8.heightBox,
//           CustomRichText(
//             text: 'Pan Card Number',
//             textColor: black000000Color,
//             showAsterisk: true,
//           ),
//           6.heightBox,
//           CustomFormField(
//             height: 16,
//             controller: panCardController,
//             label: 'Pan Card Number',
//           ),
//
//           6.heightBox,
//           SizedBox(
//             width: 80,
//             child: TextButton(
//                 onPressed: () {
//                   if (page > 0) {
//                     _pageController.previousPage(
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.ease,
//                     );
//                   } else {
//                     // Handle form submission or navigation to the next screen
//                     // based on your app logic.
//                   }
//                 },
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.black,
//                       size: 12,
//                     ),
//                     3.widthBox,
//                     'Back'.text.black.size(12).make(),
//                   ],
//                 )),
//           ),
//           // Spacer(),
//           const Align(
//             alignment: Alignment.center,
//             // child: CustomButton(
//             //   onPress: () => Get.toNamed(Routes.ADMIN_DASHBOARD_SCREEN),
//             //   height: 40,
//             //   width: 160,
//             //   backgroundColor: primaryColor,
//             //   text: 'Submit',
//             //   textColor: whiteColor,
//             //   borderRadius: 22,
//             // ),
//           )
//         ],
//       ).p16(),
//     );
//   }
// }
