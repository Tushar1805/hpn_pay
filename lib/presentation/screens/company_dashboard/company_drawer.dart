import 'package:flutter/material.dart';
import 'package:hpn_pay/core/colors/app_colors.dart';
import 'package:hpn_pay/presentation/screens/company_dashboard/create_form.dart';

import '../../../core/constants/assets_base_path.dart';
import '../create_company_screen/create_company_screen.dart';
import 'company_report.dart';
import 'dashboard.dart';

class CompanyDrawerWidget extends StatelessWidget {
  const CompanyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
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
              title: const Text(
                'Dashboard',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ));
                // Navigator.pop(context);
              },
            ),
            ExpansionTile(
              title: const Text(
                'Create',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Image.asset('$pngAssetsBasePath/help_icon.png',
                  height: 40, width: 40),
              childrenPadding: const EdgeInsets.only(left: 60),
              children: [
                ListTile(
                  title: const Text(
                    "Create Form",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateForm(),
                        ));
                  },
                ),
                ListTile(
                  title: const Text(
                    "Create Ledger",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const CreateCompanyScreen(),
                    //     ));
                  },
                ),
                ListTile(
                  title: const Text(
                    "Create Loan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Create Level",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
            // ListTile(
            //   leading: Image.asset(
            //     'assets/icons/help_flag.png',
            //     height: 40,
            //     width: 40,
            //   ),
            //   title: const Text(
            //     'Create',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 15,
            //     ),
            //   ),
            //   dense: false,
            //   onTap: () {
            //     Navigator.pop(context);
            //     // Navigator.pop(context);
            //   },
            // )
            ,
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Career',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Balancesheet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.pop(context);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Profit & Loss',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.pop(context);
                // Navigator.pop(context);
              },
            ),
            ExpansionTile(
              title: const Text(
                'Report',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Image.asset( '$pngAssetsBasePath/help_icon.png',
                  height: 40, width: 40),
              childrenPadding: const EdgeInsets.only(left: 60),
              children: [
                ListTile(
                  title: const Text(
                    "Trial Balance",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Day Book",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Cash Flow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Funds Flow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Account book",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    "Statement of Accounts",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )

            // ListTile(
            //   leading: Image.asset(
            //     'assets/icons/help_flag.png',
            //     height: 40,
            //     width: 40,
            //   ),
            //   title: const Text(
            //     'Report',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 15,
            //     ),
            //   ),
            //   dense: false,
            //   onTap: () {
            //     Navigator.pop(context);
            //     // Navigator.pop(context);
            //   },
            // )
            ,
            const Divider(
              color: Color.fromARGB(96, 77, 73, 73),
              height: 20,
              thickness: 2.5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Help',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Companyreport(),
                    ));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                '$pngAssetsBasePath/help_icon.png',
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              dense: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateForm(),
                    ));
                // Navigator.pop(context);
              },
            ),
            const Divider(
              color: Color.fromARGB(96, 77, 73, 73),
              height: 20,
              thickness: 2.5,
              indent: 20,
              endIndent: 20,
            ),
            Card(
              color: skyBlue,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Text('Found an bug?'),
                    const Text('Report now to us if you find any bugs'),
                    Card(
                        elevation: 10,
                        color: darkBlue,
                        child: SizedBox(
                          width: 250,
                          //mainAxisSize: MainAxisSize.min,
                          // children: <Widget>[
                          child: ListTile(
                            leading: Image.asset('$pngAssetsBasePath/report_icon.png'),
                            //     InkWell(
                            //   onTap: () {
                            //     Navigator.pop(context);
                            //   },
                            //   child: const Text('Report'),
                            // ),
                            title: const Text(
                              'Report',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // ],
                        )
                        // child: Text('Report'),
                        )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
