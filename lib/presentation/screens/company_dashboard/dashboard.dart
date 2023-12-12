// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hpn_pay/core/colors/app_colors.dart';

import '../../../core/constants/assets_base_path.dart';
import '../../../core/utils/utils.dart';
import 'company_drawer.dart';
// import 'package:myapp/utils.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _CompanyDashState();
}

class _CompanyDashState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //width: double.infinity,
      backgroundColor: Colors.white,
      drawer: const CompanyDrawerWidget(),
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
            const SizedBox(
              width: 8,
            ),
            InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   // MaterialPageRoute(builder: (context) => Demo()),);
                  //   MaterialPageRoute(
                  //       builder: (context) => const CompanyDashboard()),
                  // );
                },
                child: const Text(
                  'Priya Sharma',
                )),
            const SizedBox(
              height: 6,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: darkBlue,
              size: 16,
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset('$pngAssetsBasePath/notificcation_icon.png')
          ],
        ),
      ),

      body: Container(
        // companydashboardZm7 (1:345)
        padding: const EdgeInsets.all(20),
        // padding: const EdgeInsets.fromLTRB(24, 32, 23.87, 32),
        width: double.infinity,
        height: 814,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: SizedBox(
          // frame1636TLh (1:346)
          width: double.infinity,
          height: 681.24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // frame1635ojK (1:360)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame1633A45 (1:361)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame10245wj (1:362)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            width: double.infinity,
                            height: 84.2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame9682MB (1:363)
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 12.12, 0),
                                  padding: const EdgeInsets.fromLTRB(
                                      12.12, 12.12, 22.74, 13.38),
                                  width: 157.5,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f4),
                                    borderRadius:
                                        BorderRadius.circular(7.2694511414),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame14ufs (1:364)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 6.06),
                                        width: double.infinity,
                                        height: 15,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // totalcustomerETF (1:365)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 6, 0),
                                              child: Text(
                                                'Total Customer',
                                                style: safeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 9.1014490128,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175,
                                                  color: const Color(0xff002a53),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame13LFP (1:366)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0.53, 0, 0.53),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      3.23, 1.82, 3.05, 1.12),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0x2623c109),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.2893829346),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // bxtrendingupRXj (1:367)
                                                    margin: const EdgeInsets
                                                        .fromLTRB(
                                                        0, 0, 2.52, 1.51),
                                                    width: 6.96,
                                                    height: 4.14,
                                                    child: Image.asset(
                                                      'assets/images/bx-trending-up-jTb.png',
                                                      width: 6.96,
                                                      height: 4.14,
                                                    ),
                                                  ),
                                                  Text(
                                                    // 8BF (1:369)
                                                    '10.0%',
                                                    style: safeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 9.1014490128,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.2175,
                                                      color: const Color(
                                                          0xff002a53),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //////////////////////////////////////234567891234567////////////////////////////
                                      Container(
                                        // 44u (1:370)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 4.65),
                                        child: Text(
                                          '856',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 16.9620513916,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175,
                                            color: const Color(0xff002a53),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // employeeAdj (1:371)
                                        'Employee',
                                        style: safeGoogleFont(
                                          'Open Sans',
                                          fontSize: 8.4810256958,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175,
                                          color: const Color(0xff939393),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //#2Card Started  //#2Card Started  //#2Card Started  //#2Card Started  //#2Card Started  //#2Card Started  //#2Card Started

                                Container(
                                  // frame969u5X (1:372)
                                  padding: const EdgeInsets.fromLTRB(
                                      12.12, 12.12, 22.74, 13.38),
                                  width: 150,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f4),
                                    borderRadius:
                                        BorderRadius.circular(7.2694511414),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame14CKX (1:373)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 6.06),
                                        width: double.infinity,
                                        height: 15,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // totalcustomervFX (1:374)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 1, 0),
                                              child: Text(
                                                'Total Customer',
                                                style: safeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 9.1014490128,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175,
                                                  color:
                                                      const Color(0xff002a53),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      3.23, 1.82, 0, 1.12),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0x2623c109),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.2893829346),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // bxtrendingupuNM (1:376)
                                                    margin: const EdgeInsets
                                                        .fromLTRB(
                                                        0, 0, 2.52, 1.51),
                                                    width: 3,
                                                    height: 4.14,
                                                    child: Image.asset(
                                                      'assets/images/bx-trending-up-x3P.png',
                                                      width: 6.96,
                                                      height: 4.14,
                                                    ),
                                                  ),
                                                  Text(
                                                    // oid (1:378)
                                                    '10.0%',
                                                    style: safeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 9.1014490128,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.2175,
                                                      color: const Color(
                                                          0xff002a53),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // LyT (1:379)
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 4.65),
                                        child: Text(
                                          '856',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 16.9620513916,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575,
                                            letterSpacing: 0.1696205139,
                                            color: const Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // employeefF3 (1:380)
                                        'Employee',
                                        style: safeGoogleFont(
                                          'Open Sans',
                                          fontSize: 8.4810256958,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575,
                                          letterSpacing: 0.084810257,
                                          color: const Color(0xff939393),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame1632CEy (1:381)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0.79, 0),
                            width: double.infinity,
                            height: 84,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame2297cq (1:382)
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 12.09, 0),
                                  padding: const EdgeInsets.fromLTRB(
                                      12.09, 12.09, 12.09, 13.28),
                                  width: 157.12,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f4),
                                    borderRadius:
                                        BorderRadius.circular(7.2517981529),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame14NHs (1:383)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 52.42, 6.04),
                                        width: double.infinity,
                                        height: 15,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // saving5xy (1:384)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 2, 0),
                                              child: Text(
                                                'Saving ',
                                                style: safeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 9.6690645218,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5,
                                                  letterSpacing: 0.0966906452,
                                                  color:
                                                      const Color(0xff343434),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame13z4M (1:385)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0.55, 0, 0.55),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      3.23, 1.81, 2.99, 1.09),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0x2623c109),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.2158260345),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // bxtrendingupfRP (1:386)
                                                    margin: const EdgeInsets
                                                        .fromLTRB(
                                                        0, 0, 2.52, 1.53),
                                                    width: 6.95,
                                                    height: 4.13,
                                                    child: Image.asset(
                                                      'assets/images/bx-trending-up.png',
                                                      width: 6.95,
                                                      height: 4.13,
                                                    ),
                                                  ),
                                                  Text(
                                                    // mzD (1:388)
                                                    '10.0%',
                                                    style: safeGoogleFont(
                                                      'Open Sans',
                                                      fontSize: 8.4604310989,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.2575,
                                                      letterSpacing:
                                                          0.084604311,
                                                      color: const Color(
                                                          0xff0b8a00),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // KVw (1:389)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 4.59),
                                        child: Text(
                                          '856',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 16.9208621979,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575,
                                            letterSpacing: 0.169208622,
                                            color: const Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // employeeEso (1:390)
                                        'Employee',
                                        style: safeGoogleFont(
                                          'Open Sans',
                                          fontSize: 8.4604310989,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575,
                                          letterSpacing: 0.084604311,
                                          color: const Color(0xff939393),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                  
                                  
                                Container(
                                  // frame967BY9 (1:391)
                                  padding: const EdgeInsets.fromLTRB(
                                      12.09, 12.09, 22.5, 13.28),
                                  width: 150,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f4),
                                    borderRadius:
                                        BorderRadius.circular(7.2517981529),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame14gjo (1:392)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 6.04),
                                        width: double.infinity,
                                        height: 15,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // totalcustomercdT (1:393)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 1, 0),
                                              child: Text(
                                                'Total Customer',
                                                style: safeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 9.6690645218,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5,
                                                  letterSpacing: 0.0966906452,
                                                  color:
                                                      const Color(0xff343434),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame13XVX (1:394)
                                              // margin: const EdgeInsets.fromLTRB(
                                              //     0, 0.55, 0, 0.55),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      3.23, 1.81, 0, 1.09),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0x2623c109),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.2158260345),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // bxtrendingupDt9 (1:395)
                                                    margin: const EdgeInsets
                                                        .fromLTRB(
                                                        0, 0, 2.52, 1.53),
                                                    width: 6.95,
                                                    height: 4.13,
                                                    child: Image.asset(
                                                      'assets/images/bx-trending-up-LUd.png',
                                                      width: 6.95,
                                                      height: 4.13,
                                                    ),
                                                  ),
                                                  Text(
                                                    // wJM (1:397)
                                                    '10.0%',
                                                    style: safeGoogleFont(
                                                      'Open Sans',
                                                      fontSize: 8.4604310989,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.2575,
                                                      letterSpacing:
                                                          0.084604311,
                                                      color: const Color(
                                                          0xff0b8a00),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // 5fT (1:398)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 4.59),
                                        child: Text(
                                          '856',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 16.9208621979,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575,
                                            letterSpacing: 0.169208622,
                                            color: const Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // employeeEgm (1:399)
                                        'Employee',
                                        style: safeGoogleFont(
                                          'Open Sans',
                                          fontSize: 8.4604310989,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575,
                                          letterSpacing: 0.084604311,
                                          color: const Color(0xff939393),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame1634ZDF (1:400)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0.13, 0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group3898VMo (1:401)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            padding: const EdgeInsets.fromLTRB(
                                12.92, 11.46, 14.09, 15.3),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffecedf6)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(2.8644576073),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup5kbsYqs (QVFeGpNz3Yfc6UXspy5KBs)
                                  margin: const EdgeInsets.fromLTRB(
                                      0.12, 0, 0, 6.64),
                                  width: double.infinity,
                                  height: 16.23,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // employeestatussNM (1:408)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 130, 0.37),
                                        child: Text(
                                          'Employee Status',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 9.6893987656,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575,
                                            letterSpacing: 0.0968939877,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame10aXf (1:437)
                                        padding: const EdgeInsets.fromLTRB(
                                            5.71, 4.54, 6.49, 3.7),
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfff6f6f6),
                                          borderRadius: BorderRadius.circular(
                                              5.1901841164),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // filtershortTrM (1:438)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 5.54, 0),
                                              child: Text(
                                                'Filter & Short',
                                                textAlign: TextAlign.center,
                                                style: safeGoogleFont(
                                                  'Open Sans',
                                                  fontSize: 6.0552148819,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2575,
                                                  letterSpacing: 0.0605521488,
                                                  color:
                                                      const Color(0xff1a2b88),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // iconparksettingconfigMwj (1:439)
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0.84),
                                              width: 7.56,
                                              height: 7.16,
                                              child: Image.asset(
                                                '$pngAssetsBasePath/filter_icon.png',
                                                width: 7.56,
                                                height: 7.16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup214hGJ1 (QVFeTPuh5poJSuap55214h)
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 7.84, 7),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // employeenameBA5 (1:403)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 58.87, 0),
                                        child: Text(
                                          'Employee Name',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 6.9202456474,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575,
                                            letterSpacing: 0.0692024565,
                                            color: const Color(0xff939393),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // departmentGhK (1:404)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 28.67, 0),
                                        child: Text(
                                          'Department',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 6.9202456474,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575,
                                            letterSpacing: 0.0692024565,
                                            color: const Color(0xff939393),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ageMyf (1:405)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 30.85, 0),
                                        child: Text(
                                          'Age',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 6.9202456474,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575,
                                            letterSpacing: 0.0692024565,
                                            color: const Color(0xff939393),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // disiplineGKw (1:406)
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 7, 0),
                                        child: Text(
                                          'Disipline',
                                          style: safeGoogleFont(
                                            'Open Sans',
                                            fontSize: 6.9202456474,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575,
                                            letterSpacing: 0.0692024565,
                                            color: const Color(0xff939393),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // statusN85 (1:407)
                                        'Status',
                                        style: safeGoogleFont(
                                          'Open Sans',
                                          fontSize: 6.9202456474,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575,
                                          letterSpacing: 0.0692024565,
                                          color: const Color(0xff939393),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // line19hg9 (1:409)
                                  margin: const EdgeInsets.fromLTRB(
                                      0, 0, 0.13, 8.26),
                                  width: double.infinity,
                                  height: 0.39,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffefefef),
                                  ),
                                ),
                                Container(
                                  // autogroupcj3oDuP (QVFedUTERMEuErxnmucJ3o)
                                  margin: const EdgeInsets.fromLTRB(
                                      3.45, 0, 1.74, 0),
                                  width: double.infinity,
                                  height: 62.72,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group241wqP (1:410)
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 294.8,
                                          height: 61.23,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                // autogroupz9q7rhT (QVFeroQMpmg8AvCzUxz9q7)
                                                width: double.infinity,
                                                height: 15.14,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // group239Bzd (1:421)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0, 6.89, 0),
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                1.7300614119),
                                                      ),
                                                      child: Center(
                                                        // ellipse3389B (1:422)
                                                        child: Icon(Icons.person, size: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      // justinlipshutzpAR (1:411)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0.78, 28, 0),
                                                      child: Text(
                                                        'Justin Lipshutz',
                                                        style: safeGoogleFont(
                                                          'Open Sans',
                                                          fontSize:
                                                              6.9202456474,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.2575,
                                                          color: const Color(
                                                              0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // marketingWJ9 (1:412)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0.78, 34.69, 0),
                                                      child: Text(
                                                        'Marketing',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: safeGoogleFont(
                                                          'Open Sans',
                                                          fontSize:
                                                              6.9202456474,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.2575,
                                                          color: const Color(
                                                              0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // 1kh (1:413)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0.78, 32.11, 0),
                                                      child: Text(
                                                        '22',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: safeGoogleFont(
                                                          'Open Sans',
                                                          fontSize:
                                                              6.9202456474,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.2575,
                                                          color: const Color(
                                                              0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // 8aR (1:414)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0.78, 20.89, 0),
                                                      child: RichText(
                                                        textAlign:
                                                            TextAlign.center,
                                                        text: TextSpan(
                                                          style: safeGoogleFont(
                                                            'Open Sans',
                                                            fontSize:
                                                                6.9202456474,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.2575,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: '+',
                                                              style:
                                                                  safeGoogleFont(
                                                                'Open Sans',
                                                                fontSize:
                                                                    6.9202456474,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.2575,
                                                                color: const Color(
                                                                    0xff16c098),
                                                              ),
                                                            ),
                                                            const TextSpan(
                                                              text: '100%',
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame18Dth (1:415)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 1.56, 0, 1.65),
                                                      width: 38.53,
                                                      height: 09.94,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0x3316c098),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          1.9096384048,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Permanent',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: safeGoogleFont(
                                                            'Open Sans',
                                                            fontSize:
                                                                6.683734417,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.2575,
                                                            color: const Color(
                                                                0xff16c098),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroup14kogXP (QVFfLY79KaYSkPz8uA14Ko)
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 8.65, 0, 0),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // autogroupbccuQTP (QVFf6TgGN2a5UdEVtCbcCu)
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0, 0.16, 10.37),
                                                      width: double.infinity,
                                                      height: 15.14,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // group242K4Z (1:423)
                                                            margin:
                                                                const EdgeInsets
                                                                    .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    20.73,
                                                                    0),
                                                            padding:
                                                                const EdgeInsets
                                                                    .fromLTRB(0,
                                                                    0, 0.3, 0),
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.7300614119),
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // group239Qbo (1:428)
                                                                  margin: const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0,
                                                                      6.89,
                                                                      0),
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            1.7300614119),
                                                                  ),
                                                                  child: Center(
                                                                    // ellipse33YCD (1:429)
                                                                    child: Icon(Icons.person, size: 12),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // marcusculhaneTpy (1:424)
                                                                  margin: const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0.78,
                                                                      19,
                                                                      0),
                                                                  child: Text(
                                                                    'Marcus Culhane',
                                                                    style:
                                                                        safeGoogleFont(
                                                                      'Open Sans',
                                                                      fontSize:
                                                                          6.9202456474,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      height:
                                                                          1.2575,
                                                                      color: const Color(
                                                                          0xff000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // financeNBF (1:425)
                                                                  margin: const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0.78,
                                                                      42.73,
                                                                      0),
                                                                  child: Text(
                                                                    'Finance',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        safeGoogleFont(
                                                                      'Open Sans',
                                                                      fontSize:
                                                                          6.9202456474,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      height:
                                                                          1.2575,
                                                                      color: const Color(
                                                                          0xff000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // Uzy (1:426)
                                                                  margin: const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0.78,
                                                                      31.73,
                                                                      0),
                                                                  child: Text(
                                                                    '24',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        safeGoogleFont(
                                                                      'Open Sans',
                                                                      fontSize:
                                                                          6.9202456474,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      height:
                                                                          1.2575,
                                                                      color: const Color(
                                                                          0xff000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // Qdj (1:427)
                                                                  margin: const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0.78,
                                                                      0,
                                                                      0),
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      style:
                                                                          safeGoogleFont(
                                                                        'Open Sans',
                                                                        fontSize:
                                                                            6.9202456474,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        height:
                                                                            1.2575,
                                                                        color: const Color(
                                                                            0xff000000),
                                                                      ),
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              '+',
                                                                          style:
                                                                              safeGoogleFont(
                                                                            'Open Sans',
                                                                            fontSize:
                                                                                6.9202456474,
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                1.2575,
                                                                            color:
                                                                                const Color(0xff16c098),
                                                                          ),
                                                                        ),
                                                                        const TextSpan(
                                                                          text:
                                                                              '95%',
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // frame191Nd (1:417)
                                                            margin:
                                                                const EdgeInsets
                                                                    .fromLTRB(
                                                                    0,
                                                                    1.64,
                                                                    0,
                                                                    1.57),
                                                            width: 41.37,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0x33afafaf),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.9096384048),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Contract',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    safeGoogleFont(
                                                                  'Open Sans',
                                                                  fontSize:
                                                                      6.683734417,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  height:
                                                                      1.2575,
                                                                  color: const Color(
                                                                      0xff5c5c5c),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame20Hb3 (1:419)
                                                      width: 41.53,
                                                      height: 09.94,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0x3316c098),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          1.9096384048,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Permanent',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: safeGoogleFont(
                                                            'Open Sans',
                                                            fontSize: 6.6,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.2575,
                                                            color: const Color(
                                                                0xff16c098),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group243aq3 (1:430)
                                        left: 0,
                                        top: 47.578125,
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 0.54, 0),
                                          width: 229.01,
                                          height: 15.14,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                1.7300614119),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group2394VK (1:435)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 6.89, 0),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.7300614119),
                                                ),
                                                child: Center(
                                                  // ellipse33QJH (1:436)
                                                  child: Icon(Icons.person, size: 12),
                                                ),
                                              ),
                                              Container(
                                                // leostantonXNu (1:431)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0.78, 30, 0),
                                                child: Text(
                                                  'Leo Stanton',
                                                  style: safeGoogleFont(
                                                    'Open Sans',
                                                    fontSize: 6.9,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // rdQxV (1:432)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0.78, 53.2, 0),
                                                child: Text(
                                                  'R&D',
                                                  textAlign: TextAlign.center,
                                                  style: safeGoogleFont(
                                                    'Open Sans',
                                                    fontSize: 6.9,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // 7c1 (1:433)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0.78, 31.97, 0),
                                                child: Text(
                                                  '28',
                                                  textAlign: TextAlign.center,
                                                  style: safeGoogleFont(
                                                    'Open Sans',
                                                    fontSize: 6.9,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // 2DB (1:434)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0.78, 0, 0),
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    style: safeGoogleFont(
                                                      'Open Sans',
                                                      fontSize: 6.5,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.2575,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '+',
                                                        style: safeGoogleFont(
                                                          'Open Sans',
                                                          fontSize:
                                                              6.9202456474,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 1.2575,
                                                          color: const Color(
                                                              0xff16c098),
                                                        ),
                                                      ),
                                                      const TextSpan(
                                                        text: '89%',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // employeecomposition1L1 (1:450)
                            padding: const EdgeInsets.fromLTRB(
                                23.54, 23.47, 23.54, 15.9),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffecedf6)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5.2160000801),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // employeecompositiont8u (1:452)
                                  margin: const EdgeInsets.fromLTRB(
                                      0, 0, 95.91, 15.25),
                                  child: Text(
                                    'Employee Composition',
                                    style: safeGoogleFont(
                                      'Open Sans',
                                      fontSize: 17.6437950134,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575,
                                      letterSpacing: 0.1764379501,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),

                                //===START=== ** GRAPH CHART **
                                // Container(
                                //   // autogroupmiudzBw (QVFgsAE9Fq8n3fmHA6MiUD)
                                //   margin: const EdgeInsets.fromLTRB(
                                //       22.67, 0, 28.1, 11.3),
                                //   width: double.infinity,
                                //   height: 149.52,
                                //   child: Stack(
                                //     children: [
                                //       Positioned(
                                //         // group258VuP (1:454)
                                //         left: 41.8565216064,
                                //         top: 0,
                                //         child: Align(
                                //           child: SizedBox(
                                //             width: 151.64,
                                //             height: 149.52,
                                //             child: Image.asset(
                                //               'assets/images/group-258.png',
                                //               width: 151.64,
                                //               height: 149.52,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //       Positioned(
                                //         // frame23Pzm (1:457)
                                //         left: 0,
                                //         top: 16.517578125,
                                //         child: Container(
                                //           padding: const EdgeInsets.fromLTRB(
                                //               9.16, 8.69, 9.58, 8.43),
                                //           width: 72.38,
                                //           height: 39.99,
                                //           decoration: BoxDecoration(
                                //             color: const Color(0xffffffff),
                                //             borderRadius: BorderRadius.circular(
                                //                 8.6933336258),
                                //             boxShadow: const [
                                //               BoxShadow(
                                //                 color: Color(0x0c000000),
                                //                 offset:
                                //                     Offset(0, 17.3866672516),
                                //                 blurRadius: 26.0799999237,
                                //               ),
                                //             ],
                                //           ),
                                //           child: Row(
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Container(
                                //                 // fasolidfemale2H3 (1:458)
                                //                 margin:
                                //                     const EdgeInsets.fromLTRB(
                                //                         0, 0, 9.05, 0.27),
                                //                 width: 10.6,
                                //                 height: 22.6,
                                //                 child: Image.asset(
                                //                   'assets/images/fa-solid-female.png',
                                //                   width: 10.6,
                                //                   height: 22.6,
                                //                 ),
                                //               ),
                                //               Container(
                                //                 // vNR (1:460)
                                //                 margin:
                                //                     const EdgeInsets.fromLTRB(
                                //                         0, 0.87, 0, 0),
                                //                 child: Text(
                                //                   '35%',
                                //                   style: safeGoogleFont(
                                //                     'Open Sans',
                                //                     fontSize: 17.3866672516,
                                //                     fontWeight: FontWeight.w700,
                                //                     height: 1.2575,
                                //                     letterSpacing: 0.1738666725,
                                //                     color:
                                //                         const Color(0xff000000),
                                //                   ),
                                //                 ),
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //       ),
                                //       Positioned(
                                //         // frame24dXj (1:461)
                                //         left: 163.0650939941,
                                //         top: 99.1044921875,
                                //         child: Container(
                                //           padding: const EdgeInsets.fromLTRB(
                                //               8.36, 8.26, 8.4, 8),
                                //           width: 66.07,
                                //           height: 38,
                                //           decoration: BoxDecoration(
                                //             color: const Color(0xffffffff),
                                //             borderRadius: BorderRadius.circular(
                                //                 8.2610683441),
                                //             boxShadow: const [
                                //               BoxShadow(
                                //                 color: Color(0x0c000000),
                                //                 offset:
                                //                     Offset(0, 16.5221366882),
                                //                 blurRadius: 24.7832050323,
                                //               ),
                                //             ],
                                //           ),
                                //           child: Row(
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Container(
                                //                 // fasolidmaleHcH (1:462)
                                //                 margin:
                                //                     const EdgeInsets.fromLTRB(
                                //                         0, 0, 8.26, 0.26),
                                //                 width: 8.05,
                                //                 height: 21.48,
                                //                 child: Image.asset(
                                //                   'assets/images/fa-solid-male.png',
                                //                   width: 8.05,
                                //                   height: 21.48,
                                //                 ),
                                //               ),
                                //               Container(
                                //                 // bN5 (1:464)
                                //                 margin:
                                //                     const EdgeInsets.fromLTRB(
                                //                         0, 0.74, 0, 0),
                                //                 child: Text(
                                //                   '65%',
                                //                   style: safeGoogleFont(
                                //                     'Open Sans',
                                //                     fontSize: 16.5221366882,
                                //                     fontWeight: FontWeight.w700,
                                //                     height: 1.2575,
                                //                     letterSpacing: 0.1652213669,
                                //                     color:
                                //                         const Color(0xff000000),
                                //                   ),
                                //                 ),
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),

                                // // ==START== #856 Employee total
                                Container(
                                  // employeetotalihb (1:453)
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 4.72, 0),
                                  child: Text(
                                    '856 employee total',
                                    style: safeGoogleFont(
                                      'Open Sans',
                                      fontSize: 13.9093332291,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575,
                                      letterSpacing: 0.1390933323,
                                      color: const Color(0xff939393),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
