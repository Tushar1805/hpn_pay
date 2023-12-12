import 'package:flutter/material.dart';
// import 'package:screen_release/bank_screen.dart';
// import 'package:screen_release/verify_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/verify_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/bank_screen.dart';

class GenderScreen extends StatefulWidget {
  static const routeName = '/genderscreen';
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  TextEditingController textController = TextEditingController();
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
              SizedBox(
                width: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Gender',
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
                      hintText: 'Female',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins-Black.ttf',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff1C1816)),
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
                        'Date of Birth',
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
                          hintText: '21st October 2023',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff1C1816)),
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
                            'Pan Number',
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
                              hintText: 'Pan number',
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
                      const Row(
                        children: [
                          Text(
                            'Upload pan card',
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
                          controller: textController,
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
                                borderSide:
                                    BorderSide(color: Color(0xffD6D6D6))),
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
                                )),
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
                                      .pushNamed(VerifyScreen.routeName);
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
                              Spacer(),
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
                                  // Navigator.of(context)
                                  //     .pushNamed(BankScreen.routeName);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const BankScreen()),
                                  );
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
        ),
      ),
    );
  }
}
