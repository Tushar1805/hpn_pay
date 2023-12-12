import 'package:flutter/material.dart';

import 'package:hpn_pay/presentation/screens/rutuja/detail_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/submit_screen.dart';

class MinimumScreen extends StatefulWidget {
  static const routeName = 'minimumscreen';
  const MinimumScreen({super.key});

  @override
  State<MinimumScreen> createState() => _MinimumScreenState();
}

class _MinimumScreenState extends State<MinimumScreen> {
  String dropdownValue = 'one';
  String groupValue = "yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Target',
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
                    'Type of Loan',
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
                    border: Border.all(color: const Color(0xffD6D6D6))),
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
                    'Enter',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Minimum File',
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
                            'Amount',
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
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Method of Payment',
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
                                  fontFamily: 'Poppins-Black.ttf',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xffFF0000),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffD6D6D6))),
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
                                      style:
                                          TextStyle(color: Color(0xffD6D6D6)),
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
                                    'Additional',
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
                                        fontFamily: 'Poppins-Black.ttf',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xffFF0000)),
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
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            'Continue Performance',
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
                                        width: 140,
                                        child: TextFormField(
                                          autofocus: true,
                                          textAlign: TextAlign.left,
                                          decoration: const InputDecoration(
                                              hintText: 'Enter',
                                              hintStyle: TextStyle(
                                                  fontFamily:
                                                      'Poppins-Black.ttf',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color(0xffC4C4C4)),
                                              border: OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0xffD6D6D6)))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 50, 0, 0),
                                    child: const Text(
                                      'Month',
                                      style: TextStyle(
                                          fontFamily: 'Poppins-Black.ttf',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color(0xff002A53)),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Upgrade Plan',
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
                              Row(
                                children: [
                                  Radio(
                                      value: "yes",
                                      groupValue: groupValue,
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue = value!;
                                        });
                                      }),
                                  const Text(
                                    'Yes',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.31,
                                      color: Color(0xff4B4B4B),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Radio(
                                      value: "no",
                                      groupValue: groupValue,
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue = value!;
                                        });
                                      }),
                                  const Text(
                                    'No',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.31,
                                      color: Color(0xff4B4B4B),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(DetailScreen.routeName);
                                    },
                                    child: const Icon(
                                      Icons.keyboard_arrow_left,
                                      color: Color(0xff1C1816),
                                    ),
                                  ),
                                  const Text(
                                    'Back',
                                    style: TextStyle(
                                        fontFamily: 'Poppins-Black.ttf',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xff1C1816)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 180,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SubmitScreen(),
                                        ));
                                    // Navigator.of(context)
                                    //     .pushNamed(SubmitScreen.routeName);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff002A53)),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontFamily: 'Poppins-Black.ttf',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17.49,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
        ),
      ),
    );
  }
}
