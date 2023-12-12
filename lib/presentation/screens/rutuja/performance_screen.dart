import 'package:flutter/material.dart';
// import 'package:screen_release/target_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/target_screen.dart';

class PerformanceScreen extends StatefulWidget {
  static const routeName = '/performancescreen';
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  String groupValue = "yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        width: 150,
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
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 80,
                width: 350,
                child: Card(
                  color: Color(0xffFFFFFF),
                  margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Center(
                    child: Text(
                      '(If employee continues with the target will the given\nmonths then they will be promote for next level or if\nthey will not continue with the target then they will\nbe promote down, )',
                      style: TextStyle(
                          fontFamily: 'Poppins-Black.ttf',
                          fontWeight: FontWeight.w600,
                          fontSize: 7.93,
                          color: Color(0xff515151)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Column(
                children: [
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
                            color: Color(0xff4B4B4B)),
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
                        'No',
                        style: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.31,
                            color: Color(0xff4B4B4B)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(TargetScreen.routeName);
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
                    height: 300,
                  ),
                  SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {},
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
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
