import 'package:flutter/material.dart';
// import 'package:screen_release/aadhar_screen.dart';
// import 'package:screen_release/state_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/aadhar_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/state_screen.dart';

class UploadScreen extends StatefulWidget {
  static const routeName = '/uploadscreen';
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Name',
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
                        'Surname',
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
                        hintText: 'Surname',
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
                  const Row(
                    children: [
                      Text(
                        'Upload Image',
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
                      ),
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
                      decoration: InputDecoration(
                        hintText: 'No file open',
                        hintStyle: const TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffC4C4C4)),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD6D6D6))),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 12,
                            width: 80,
                            child: MaterialButton(
                              color: const Color(0xff002A53),
                              onPressed: () {},
                              child: const Text(
                                'Choose File',
                                style: TextStyle(
                                    fontFamily: 'Poppins-Black.ttf',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.18,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Email Address',
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
                            color: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Mobile number',
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
                            color: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Address',
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
                        hintText: 'Address',
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
                              Navigator.of(context)
                                  .pushNamed(AadharScreen.routeName);
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
                          const Spacer(

                          ),
                          const Text(
                            'Next',
                            style: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff1C1816)),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const StateScreen(),
                                  ));
                              // Navigator.of(context)
                              //     .pushNamed(StateScreen.routeName);
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
        ),
      ),
    );
  }
}
