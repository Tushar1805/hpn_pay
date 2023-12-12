import 'package:flutter/material.dart';
// import 'package:screen_release/gender_screen.dart';
// import 'package:screen_release/target_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/gender_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/target_screen.dart';

class BankScreen extends StatefulWidget {
  static const routeName = '/bankscreen';
  const BankScreen({super.key});

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bank detail',
                  style: TextStyle(
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff000000)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Bank Name',
                      style: TextStyle(
                          fontFamily: 'Poppins-Black.ttf',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff002A53)),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '*',
                      style: TextStyle(
                        color: Color(0xffFF0000),
                        fontFamily: 'Poppins-Black.ttf',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        hintText: 'Enter',
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffC4C4C4)),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD6D6D6)))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Bank Holder Name',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff002A53)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            color: Color(0xffFF0000),
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        autofocus: true,
                        textAlign: TextAlign.left,
                        decoration: const InputDecoration(
                            hintText: 'Enter',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xffC4C4C4)),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD6D6D6)))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Account number',
                              style: TextStyle(
                                  fontFamily: 'Poppins-Black.ttf',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff002A53)),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '*',
                              style: TextStyle(
                                color: Color(0xffFF0000),
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextFormField(
                            autofocus: true,
                            textAlign: TextAlign.left,
                            decoration: const InputDecoration(
                                hintText: 'Enter',
                                hintStyle: TextStyle(
                                    fontFamily: 'Poppins-Black.ttf',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xffC4C4C4)),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffD6D6D6)))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'IFSC Code',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xff002A53)),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '*',
                                  style: TextStyle(
                                    color: Color(0xffFF0000),
                                    fontFamily: 'Poppins-Black.ttf',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: TextFormField(
                                autofocus: true,
                                textAlign: TextAlign.left,
                                decoration: const InputDecoration(
                                    hintText: 'Enter',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Poppins-Black.ttf',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffD6D6D6)))),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Level',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xff002A53)),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '*',
                                  style: TextStyle(
                                    color: Color(0xffFF0000),
                                    fontFamily: 'Poppins-Black.ttf',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD6D6D6))),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                value: dropdownValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                isExpanded: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                hint: const Text(
                                  'Select',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xffC4C4C4)),
                                ),
                                items: const [
                                  DropdownMenuItem(
                                      value: 'one',
                                      child: Text(
                                        'one',
                                        style: TextStyle(
                                            fontFamily: 'Poppins-Black.ttf',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xffC4C4C4)),
                                      )),
                                  DropdownMenuItem(
                                      value: 'two',
                                      child: Text(
                                        'two',
                                        style: TextStyle(
                                            fontFamily: 'Poppins-Black.ttf',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xffC4C4C4)),
                                      )),
                                  DropdownMenuItem(
                                      value: 'three',
                                      child: Text(
                                        'three',
                                        style: TextStyle(
                                            fontFamily: 'Poppins-Black.ttf',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xffC4C4C4)),
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      'Salary',
                                      style: TextStyle(
                                          fontFamily: 'Poppins-Black.ttf',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff002A53)),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(
                                        color: Color(0xffFF0000),
                                        fontFamily: 'Poppins-Black.ttf',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: TextFormField(
                                    autofocus: true,
                                    textAlign: TextAlign.left,
                                    decoration: const InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: Color(0xff200E32),
                                      ),
                                      hintText: 'By default',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Poppins-Black.ttf',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xffC4C4C4)),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Joining Date',
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Black.ttf',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xff002A53)),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          '*',
                                          style: TextStyle(
                                            color: Color(0xffFF0000),
                                            fontFamily: 'Poppins-Black.ttf',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: TextFormField(
                                        autofocus: true,
                                        textAlign: TextAlign.left,
                                        decoration: const InputDecoration(
                                          hintText: 'By default',
                                          hintStyle: TextStyle(
                                              fontFamily: 'Poppins-Black.ttf',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xffC4C4C4)),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffD6D6D6),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    GenderScreen.routeName);
                                              },
                                              child: const Icon(
                                                Icons.keyboard_arrow_left,
                                                color: Color(0xff1C1816),
                                              ),
                                            ),
                                            const Text(
                                              'Back',
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-Black.ttf',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color(0xff1C1816)),
                                            ),
                                            const Spacer(),
                                            const Text(
                                              'Next',
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-Black.ttf',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color(0xff1C1816)),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                // Navigator.of(context).pushNamed(
                                                //     TargetScreen.routeName);
                                                Navigator.push(context, MaterialPageRoute(builder:
                                                       (context)=> const TargetScreen(),));

                                              },
                                              child: const Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Color(0xff1C1816),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
