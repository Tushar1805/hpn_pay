import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
// import 'package:screen_release/upload_screen.dart';
// import 'package:screen_release/verify_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/upload_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/verify_screen.dart';

class AadharScreen extends StatefulWidget {
  static const routeName = '/aadharscreen';
  const AadharScreen({super.key});

  @override
  State<AadharScreen> createState() => _AadharScreenState();
}

class _AadharScreenState extends State<AadharScreen> {
  TextEditingController textController = TextEditingController();
  String groupValue = "yes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 80, 10, 10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: [
                    Text(
                      'Aadhar card',
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
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
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
                    'E-KYC',
                    style: TextStyle(
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.07,
                      color: Color(0xff4B4B4B),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Radio(
                      value: "No",
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      }),
                  const Text(
                    'Manual KYC',
                    style: TextStyle(
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.07,
                      color: Color(0xff4B4B4B),
                    ),
                  ),
                ],
              ),
              groupValue == "yes"
                  ? Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Row(
                            children: [
                              Text(
                                'Enter Aadhar number',
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
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              autofocus: true,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hintText: 'Aadhar Number',
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
                                  child: MaterialButton(
                                    color: const Color(0xff002A53),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          actions: [
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 25, 0, 0),
                                              child: Center(
                                                child: Text(
                                                  'Enter OTP',
                                                  style: TextStyle(
                                                      fontSize: 15.2,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff000000)),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Column(
                                              children: [
                                                Center(
                                                  child: Pinput(
                                                    length: 6,
                                                    // focusNode: _focusNode,
                                                    closeKeyboardWhenCompleted:
                                                        true,
                                                    submittedPinTheme: PinTheme(
                                                        width: 56,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black))),
                                                    focusedPinTheme: PinTheme(
                                                        width: 56,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black))),
                                                    defaultPinTheme: PinTheme(
                                                      width: 56,
                                                      height: 50,
                                                      // textStyle: GoogleFonts.spaceGrotesk(
                                                      //     color: black000000Color,
                                                      //     fontWeight: bold,
                                                      //     fontSize: 14),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),

                                                    // controller: otpController,

                                                    pinputAutovalidateMode:
                                                        PinputAutovalidateMode
                                                            .onSubmit,
                                                    showCursor: true,
                                                    // onCompleted: (pin)
                                                    //=> print(pin)
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                SizedBox(
                                                  width: 150,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => const VerifyScreen(),
                                                          ));
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                const Color(
                                                                    0xff002A53)),
                                                    child: const Text(
                                                      'Verify',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Poppins-Black.ttf',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.49,
                                                          color: Color(
                                                              0xffFFFFFF)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Get OTP',
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
                      ],
                    )
                  : Center(
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Aadhar number',
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
                                hintText: 'Party name',
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
                                'Upload Aadhar',
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
                                'Pan number',
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
                                hintText: 'Display name',
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
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const UploadScreen(),
                                  ));
                              // Navigator.of(context)
                              //     .pushNamed(UploadScreen.routeName);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xff1C1816)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color(0xff1C1816),
                                )
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
