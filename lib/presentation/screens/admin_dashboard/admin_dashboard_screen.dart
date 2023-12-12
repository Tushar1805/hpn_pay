import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpn_pay/core/colors/app_colors.dart';
import 'package:hpn_pay/core/constants/assets_base_path.dart';
import 'package:hpn_pay/logic/cubit/get_all_company_cubit/get_all_company_cubit.dart';
import 'package:hpn_pay/presentation/widgets/custom_button.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/constants/font_weight.dart';
import '../company_dashboard/dashboard.dart';
import '../create_company_screen/create_company_screen.dart';
import 'package:http/http.dart' as http;

import 'help_details.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key});

  @override
  _AdminDashboardScreenState createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> companyList = <String>[
    'DSA',
    'Nidhi PVT.LTD',
    'Nidhi PVT.LTD',
  ];

  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    context.read<GetAllCompanyCubit>().getAllCompanyCubit();
    fetchData();
    super.initState();
  }

  bool isLoading = false;

  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://avestan-be.onrender.com/api/admin/getAllCompanies'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      List<dynamic> responseData = json.decode(response.body);

      setState(() {
        isLoading = true;
        data = List<Map<String, dynamic>>.from(responseData);
      });
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load data');
    }
  }

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        // Assign the GlobalKey to the Scaffold
        backgroundColor: Colors.white,
        drawer: Drawer(
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
                  tileColor: _currentPageIndex == 0 ? Colors.blueAccent.withOpacity(0.1) : null,
                  title: commonText("Dashboard", darkBlue, 16, normal),
                  onTap: () {
                    setState(() {
                      _currentPageIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    '$pngAssetsBasePath/help_icon.png',
                    height: 40,
                    width: 40,
                  ),
                  title: commonText("Help", darkBlue, 16, normal),
                  tileColor: _currentPageIndex == 1 ? Colors.blueAccent.withOpacity(0.1) : null,
                  onTap: () {
                    setState(() {
                      _currentPageIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    '$pngAssetsBasePath/logout_icon.png',
                    height: 40,
                    width: 40,
                  ),
                  title: commonText("Logout", darkBlue, 16, normal),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        commonText(
                            "Found an bug?", black000000Color, 20, normal),
                        SizedBox(
                          height: 5,
                        ),
                        commonText("Report now to us if you find any bugs",
                            black000000Color, 20, normal),
                        SizedBox(
                          height: 15,
                        ),
                        CustomButton(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AdminDashboardScreen()),
                            );
                          },
                          width: double.infinity,
                          borderRadius: 8,
                          backgroundColor:
                              const Color.fromARGB(255, 0, 17, 207),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('$pngAssetsBasePath/report_icon.png'),
                              SizedBox(
                                height: 5,
                              ),
                              commonText(
                                  "Report", black000000Color, 16, normal),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            )),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          // leading: InkWell(
          //     onTap: () {
          //       _scaffoldKey.currentState!.openDrawer();
          //     },
          //     child: Icon(Icons.ac_unit_sharp)),
          title: Row(
            children: [
              const Spacer(),
              const Icon(
                Icons.person,
                color: darkBlue,
                size: 16,
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      // MaterialPageRoute(builder: (context) => Demo()),);
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: commonText('Priya Sharma', darkBlue, 12, semiBold)),
              SizedBox(
                height: 6,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: darkBlue,
                size: 16,
              ),
              SizedBox(
                height: 8,
              ),
              Image.asset('$pngAssetsBasePath/notificcation_icon.png')
            ],
          ),
        ),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CompanyListScreen(),
            HelpDetails(),
          ],
        ));

    // Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: SingleChildScrollView(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         CustomButton(
    //           onPress: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => CreateCompanyScreen(),
    //                 ));
    //           },
    //           borderRadius: 6,
    //           height: 40,
    //           width: 180,
    //           backgroundColor: darkBlue,
    //           text: 'Create Company',
    //           textColor: Colors.white,
    //         ),
    //         SizedBox(
    //           height: 40,
    //         ),
    //         commonText('Added Companies', black000000Color, 12, semiBold),
    //         SizedBox(
    //           height: 15,
    //         ),
    //         isLoading == false ?
    //         // CircularProgressIndicator(color: Colors.red,)
    //         Shimmer.fromColors(
    //           baseColor: Colors.red,
    //           highlightColor: Colors.green,
    //           child: ListView.builder(
    //             shrinkWrap: true,
    //             primary: false,
    //             itemCount: data.length, // You can adjust the count as needed
    //             itemBuilder: (context, index) {
    //               return ListTile(
    //                 title: Container(
    //                   width: double.infinity,
    //                   height: 20.0,
    //                   color: Colors.red,
    //                 ),
    //                 subtitle: Container(
    //                   width: double.infinity,
    //                   height: 16.0,
    //                   color: Colors.green,
    //                 ),
    //               );
    //             },
    //           ),
    //         )
    //             :
    //         ListView.builder(
    //             primary: false,
    //             shrinkWrap: true,
    //           itemCount: data.length,
    //           itemBuilder: (context, index) {
    //             return ListTile(
    //               title: Text(data[index]['companyName']),
    //               // subtitle: Text(data[index]['email']),
    //             );
    //           },
    //         ),
    //         // ListView.separated(
    //         //   primary: false,
    //         //   shrinkWrap: true,
    //         //   itemCount: data.length,
    //         //   itemBuilder: (BuildContext context, int index) {
    //         //     return Container(
    //         //       decoration: BoxDecoration(
    //         //           border:
    //         //           Border.all(color: Colors.grey.withOpacity(0.4)),
    //         //           borderRadius: BorderRadius.all(Radius.circular(8))),
    //         //       child: Padding(
    //         //         padding: const EdgeInsets.all(10),
    //         //         child: ListTile(
    //         //           title: Text(data[index]['companyName']),
    //         //           // subtitle: Text(data[index]['email']),
    //         //           trailing: Image.asset(
    //         //             '$pngAssetsBasePath/arrow.png',
    //         //             height: 20,
    //         //             width: 20,
    //         //           )
    //         //         ),
    //         //         ),
    //         //     );
    //         //   },
    //         //   separatorBuilder: (BuildContext context, int index) {
    //         //     return const SizedBox(
    //         //       height: 10,
    //         //     );
    //         //   },
    //         // )
    //       ],
    //     ),
    //   ),
    // ));
  }

  Text commonText(text, color, double size, weight,) => Text(
        text,
        style: GoogleFonts.poppins(
            textStyle:
                TextStyle(color: color, fontSize: size, fontWeight: weight)),
      );

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.red,
      highlightColor: Colors.green,
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: data.length, // You can adjust the count as needed
        itemBuilder: (context, index) {
          return ListTile(
            title: Container(
              width: double.infinity,
              height: 20.0,
              color: Colors.red,
            ),
            subtitle: Container(
              width: double.infinity,
              height: 16.0,
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}

class CompanyListScreen extends StatefulWidget {
  const CompanyListScreen({super.key});

  @override
  State<CompanyListScreen> createState() => _CompanyListScreenState();
}

class _CompanyListScreenState extends State<CompanyListScreen> {
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    context.read<GetAllCompanyCubit>().getAllCompanyCubit();
    fetchData();
    super.initState();
  }

  bool isLoading = false;

  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://avestan-be.onrender.com/api/admin/getAllCompanies'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      List<dynamic> responseData = json.decode(response.body);

      setState(() {
        isLoading = true;
        data = List<Map<String, dynamic>>.from(responseData);

        print("dataaaaaaaa ${data.length}");
      });
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomButton(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateCompanyScreen(),
                    ));
              },
              borderRadius: 6,
              height: 40,
              width: 180,
              backgroundColor: darkBlue,
              text: 'Create Company',
              textColor: Colors.white,
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const Dashboard()),
                  );
                },
                child: commonText('Added Companies', black000000Color, 12, semiBold)),
            SizedBox(
              height: 15,
            ),
            isLoading == false
                ?
                Container(
                  width: double.infinity,
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(color: darkBlue),
                    ],
                  ),
                )
                // Shimmer.fromColors(
                //     baseColor: Colors.red,
                //     highlightColor: Colors.green,
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //       primary: false,
                //       itemCount:
                //           data.length, // You can adjust the count as needed
                //       itemBuilder: (context, index) {
                //         return Container(
                //           decoration: BoxDecoration(
                //             border: Border.all(
                //               color: Colors.black, // Set the border color
                //               width: 1.0,           // Set the border width
                //             ),
                //             borderRadius: BorderRadius.circular(8.0), // Set the border radius. Adjust as needed.
                //           ),
                //           child: ListTile(
                //             title: Container(
                //               width: double.infinity,
                //               height: 20.0,
                //               color: Colors.red,
                //             ),
                //             subtitle: Container(
                //               width: double.infinity,
                //               height: 16.0,
                //               color: Colors.green,
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   )
                :
            // ListView.builder(
            //         primary: false,
            //         shrinkWrap: true,
            //         itemCount: data.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //             decoration: BoxDecoration(
            //               border: Border.all(
            //                 color: Colors.black, // Set the border color
            //                 width: 1.0,           // Set the border width
            //               ),
            //               borderRadius: BorderRadius.circular(8.0), // Set the border radius. Adjust as needed.
            //             ),
            //             child: ListTile(
            //               title: Text(data[index]['companyName']),
            //           trailing: Image.asset(
            //                       '$pngAssetsBasePath/arrow.png',
            //                       height: 20,
            //                       width: 20,
            //                     )
            //               // subtitle: Text(data[index]['email']),
            //             ),
            //           );
            //         },
            //       ),

            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Dashboard()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(data[index]['companyName']),
                        // subtitle: Text(data[index]['email']),
                        trailing: Image.asset(
                          '$pngAssetsBasePath/arrow.png',
                          height: 20,
                          width: 20,
                        )
                      ),
                      ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            )
          ],
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
