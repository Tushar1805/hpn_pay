import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../company_dashboard/dashboard.dart';

class SubmitScreen extends StatefulWidget {
  static const routeName = '/submitscreen';
  const SubmitScreen({super.key});

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  String selecteddate = "Select Date";

  String dropdownValue = 'one';

  TextEditingController textController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: Colors.white,
                activeTrackColor: const Color(0xff9747FF),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                  const Duration(seconds: 5);
                }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Party Name',
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
                        width: 215,
                        child: TextFormField(
                          autofocus: true,
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                              hintText: 'Priya Sharma',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff3A3A3A),
                              ),
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
                            'Display Name',
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
                        width: 215,
                        child: TextFormField(
                          autofocus: true,
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                              hintText: 'Priya Pvt Ltd',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff3A3A3A),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD6D6D6)))),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 170,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 5),
                      ),
                      child: Image.asset('assets/logo/google.png'),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          hintText:
                              'Lorem ipsum dolor sit amet, consectectur adipscing\nelit, sed do eiusmod tempor i',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1C1816),
                          ),
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
                        'State',
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
                          hintText: 'Maharashtra',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff414141),
                          ),
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
                        'City',
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
                        width: 160,
                      ),
                      Text(
                        'Pincode',
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
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: TextField(
                          controller: textController,
                          autofocus: true,
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                              hintText: 'Nagpur',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff3A3A3A),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD6D6D6)))),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 50,
                        width: 163,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: textController,
                          autofocus: true,
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                              hintText: '440009',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins-Black.ttf',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff1C1816),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD6D6D6)))),
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
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: '9658652381',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1C1816),
                          ),
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
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: 'priyasharma@gmail.com',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1C1816),
                          ),
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
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: 'JYSHK 956H',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1C1816),
                          ),
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
                        hintStyle: const TextStyle(
                            fontFamily: 'Poppins-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffC4C4C4)),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD6D6D6))),
                        suffixIcon: const Icon(
                          Icons.check_circle,
                          color: Color(0xff40B445),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 12,
                            width: 80,
                            child: MaterialButton(
                              color: const Color(0xff818181),
                              onPressed: () {},
                              child: const Text(
                                'File choosed',
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
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                              hintText: 'Bank of India',
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
                                  hintText: 'Priya sharma',
                                  hintStyle: TextStyle(
                                      fontFamily: 'Poppins-Black.ttf',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff1C1816)),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffD6D6D6)))),
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
                                      hintText: '4865 521 868',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Poppins-Black.ttf',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff1C1816)),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffD6D6D6)))),
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
                                          hintText: 'BKIDH96584',
                                          hintStyle: TextStyle(
                                              fontFamily: 'Poppins-Black.ttf',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff1C1816)),
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
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextFormField(
                                      autofocus: true,
                                      textAlign: TextAlign.left,
                                      decoration: const InputDecoration(
                                          hintText: 'Level 3',
                                          hintStyle: TextStyle(
                                              fontFamily: 'Poppins-Black.ttf',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff1C1816)),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffD6D6D6)))),
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
                                            hintText: '20,000',
                                            hintStyle: TextStyle(
                                                fontFamily: 'Poppins-Black.ttf',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff1C1816)),
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
                                                    fontFamily:
                                                        'Poppins-Black.ttf',
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
                                                  fontFamily:
                                                      'Poppins-Black.ttf',
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
                                                hintText: '21st october 2023',
                                                hintStyle: TextStyle(
                                                    fontFamily:
                                                        'Poppins-Black.ttf',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xff1C1816)),
                                                border: OutlineInputBorder(),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xffD6D6D6),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Target',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Poppins-Black.ttf',
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
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '*',
                                                    style: TextStyle(
                                                      color: Color(0xffFF0000),
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: 'Personal Loan',
                                                    hintStyle: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff1C1816)),
                                                    border:
                                                        OutlineInputBorder(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xffD6D6D6),
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
                                                    'Minimum File',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '*',
                                                    style: TextStyle(
                                                      color: Color(0xffFF0000),
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: '2',
                                                    hintStyle: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff1C1816)),
                                                    border:
                                                        OutlineInputBorder(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xffD6D6D6),
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
                                                    'Range',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '*',
                                                    style: TextStyle(
                                                      color: Color(0xffFF0000),
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Row(
                                                children: [
                                                  Text(
                                                    'From',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  SizedBox(
                                                    width: 153,
                                                  ),
                                                  Text(
                                                    'To',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    height: 50,
                                                    width: 155,
                                                    child: TextField(
                                                      controller:
                                                          textController,
                                                      autofocus: true,
                                                      textAlign: TextAlign.left,
                                                      decoration:
                                                          const InputDecoration(
                                                              hintText:
                                                                  '1 Lakh',
                                                              hintStyle:
                                                                  TextStyle(
                                                                fontFamily:
                                                                    'Poppins-Black.ttf',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff1C1816),
                                                              ),
                                                              border:
                                                                  OutlineInputBorder(),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Color(0xffD6D6D6)))),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 25,
                                                  ),
                                                  SizedBox(
                                                    height: 50,
                                                    width: 163,
                                                    child: TextField(
                                                      controller:
                                                          textController,
                                                      autofocus: true,
                                                      textAlign: TextAlign.left,
                                                      decoration:
                                                          const InputDecoration(
                                                              hintText:
                                                                  '5 Lakh',
                                                              hintStyle:
                                                                  TextStyle(
                                                                fontFamily:
                                                                    'Poppins-Black.ttf',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff1C1816),
                                                              ),
                                                              border:
                                                                  OutlineInputBorder(),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Color(0xffD6D6D6)))),
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
                                                    'Method of Payment',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '*',
                                                    style: TextStyle(
                                                      color: Color(0xffFF0000),
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: 'Flat',
                                                    hintStyle: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff1C1816)),
                                                    border:
                                                        OutlineInputBorder(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xffD6D6D6),
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
                                                    'Amount',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff002A53)),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '*',
                                                    style: TextStyle(
                                                      color: Color(0xffFF0000),
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: '1000',
                                                    hintStyle: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Black.ttf',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff1C1816)),
                                                    border:
                                                        OutlineInputBorder(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xff1C1816),
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
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Row(
                                                            children: [
                                                              Text(
                                                                'Continue Performance',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins-Black.ttf',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12,
                                                                    color: Color(
                                                                        0xff002A53)),
                                                              ),
                                                              SizedBox(
                                                                width: 2,
                                                              ),
                                                              Text(
                                                                '*',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xffFF0000),
                                                                  fontFamily:
                                                                      'Poppins-Black.ttf',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
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
                                                            child:
                                                                TextFormField(
                                                              autofocus: true,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              decoration: const InputDecoration(
                                                                  hintText: '4',
                                                                  hintStyle: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins-Black.ttf',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      fontSize:
                                                                          12,
                                                                      color: Color(
                                                                          0xff1C1816)),
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
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
                                                            margin:
                                                                const EdgeInsets
                                                                    .fromLTRB(0,
                                                                    50, 0, 0),
                                                            child: const Text(
                                                              'Month',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins-Black.ttf',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16,
                                                                  color: Color(
                                                                      0xff002A53)),
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
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              80, 0, 0, 0),
                                                      child: Center(
                                                        child: Text(
                                                          '(If employee continues with the target will the given\nmonths then they will be promote for next level or if\nthey will not continue with the target then they will\nbe promote down, )',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins-Black.ttf',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 7.93,
                                                              color: Color(
                                                                  0xff515151)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 30,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Deactivate',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff000000)),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      const Row(
                                                        children: [
                                                          Text(
                                                            'Date',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins-Black.ttf',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff002A53)),
                                                          ),
                                                          SizedBox(
                                                            width: 2,
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xffFF0000),
                                                              fontFamily:
                                                                  'Poppins-Black.ttf',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 50,
                                                            child: TextField(
                                                              controller:
                                                                  _dateController,
                                                              decoration:
                                                                  const InputDecoration(
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      hintText:
                                                                          '21st October 2023',
                                                                      hintStyle:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            'Poppins-Black.ttf',
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        fontSize:
                                                                            12,
                                                                        color: Color(
                                                                            0xff1C1816),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      suffixIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .edit,
                                                                        color: Color(
                                                                            0xff200E32),
                                                                      ),
                                                                      border:
                                                                          OutlineInputBorder(),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                              borderSide: BorderSide(color: Color(0xffD6D6D6)))),
                                                              readOnly: true,
                                                              onTap: () {
                                                                setState(() {
                                                                  _selectDate();
                                                                });
                                                              },
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
                                                            'Remark',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins-Black.ttf',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff002A53)),
                                                          ),
                                                          SizedBox(
                                                            width: 2,
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xffFF0000),
                                                              fontFamily:
                                                                  'Poppins-Black.ttf',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                          textAlign:
                                                              TextAlign.left,
                                                          decoration:
                                                              const InputDecoration(
                                                                  hintText:
                                                                      'Lorem ipsum dolor sit amet, consectectur adipscing\nelit, sed do eiusmod tempor i',
                                                                  hintStyle:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Poppins-Black.ttf',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12,
                                                                    color: Color(
                                                                        0xff1C1816),
                                                                  ),
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(color: Color(0xffD6D6D6)))),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                              width: 180,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        AlertDialog(
                                                      actions: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(50,
                                                                  25, 50, 15),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Column(
                                                                    children: [
                                                                      Transform
                                                                          .scale(
                                                                        scale:
                                                                            2,
                                                                        child:
                                                                            const Icon(
                                                                          Icons
                                                                              .check_circle,
                                                                          color:
                                                                              Color(0xff002A53),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            20,
                                                                      ),
                                                                      const Text(
                                                                        'Deactivate',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15.2,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color: Color(0xff000000)),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            5,
                                                                      ),
                                                                      const Text(
                                                                        'Successfully',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15.2,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color: Color(0xff000000)),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            10,
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              150,
                                                                          child:
                                                                              ElevatedButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => const Dashboard(),
                                                                                  ));
                                                                            },
                                                                            style:
                                                                                ElevatedButton.styleFrom(backgroundColor: const Color(0xff002A53)),
                                                                            child:
                                                                                const Text(
                                                                              'OK',
                                                                              style: TextStyle(fontFamily: 'Poppins-Black.ttf', fontWeight: FontWeight.w700, fontSize: 17.49, color: Color(0xffFFFFFF)),
                                                                            ),
                                                                          )),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff002A53)),
                                                child: const Text(
                                                  'Deactivate',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-Black.ttf',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 17.49,
                                                      color: Color(0xffFFFFFF)),
                                                ),
                                              )),
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
