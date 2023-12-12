// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:screen_release/profile_screen.dart';
import 'package:hpn_pay/presentation/screens/rutuja/profile_screen.dart';

// ignore: must_be_immutable
class DisplayScreen extends StatefulWidget {
  TextEditingController textController = TextEditingController();
  static const routeName = '/displayscreen';

  DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  String value = '';
  String dropdownValue = 'one';
  String groupValue = "yes";

  @override
  Widget build(BuildContext context) {
    var textController;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
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
                width: double.infinity,
                child: TextFormField(
                  controller: textController,
                  autofocus: true,
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      hintText: 'Party Name',
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
                width: double.infinity,
                child: TextFormField(
                  controller: textController,
                  autofocus: true,
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      hintText: 'Display Name',
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
              const Row(
                children: [
                  Text(
                    'Upload Cover Image',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                        )),
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
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                      hintText: 'Address',
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
              const Row(
                children: [
                  Text(
                    'State',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                      hintText: 'State',
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
              const Row(
                children: [
                  Text(
                    'City',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                    width: 163,
                  ),
                  Text(
                    'Pincode',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 140,
                    child: TextField(
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: 'City',
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
                    width: 28,
                  ),
                  SizedBox(
                    height: 50,
                    width: 160,
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
                          hintText: 'Pincode',
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
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Mobile number',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'GST Number',
                    style: TextStyle(
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xff002A53),
                    ),
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
              const Row(
                children: [
                  Text(
                    'GST Number',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'Effective Date',
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
              const Row(
                children: [
                  Text(
                    'Update URL',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'User ID',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'Type of Loan',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                  items: const [
                    DropdownMenuItem<String>(
                        value: 'one',
                        child: Text(
                          'Business',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        )),
                    DropdownMenuItem<String>(
                        value: 'two',
                        child: Text(
                          'Construction',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        )),
                    DropdownMenuItem<String>(
                        value: 'three',
                        child: Text(
                          'Security',
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
              const Row(
                children: [
                  Text(
                    'Range',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
              const Row(
                children: [
                  Text(
                    'From',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 162,
                  ),
                  Text(
                    'To',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 137,
                    child: TextField(
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: 'Amount in Lakh',
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
                    width: 28,
                  ),
                  SizedBox(
                    height: 50,
                    width: 165,
                    child: TextField(
                      controller: textController,
                      autofocus: true,
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                          hintText: 'Amount in Lakh',
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
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Method of Payment',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                    'Select',
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                        value: 'one',
                        child: Text(
                          'Cash',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        )),
                    DropdownMenuItem<String>(
                        value: 'two',
                        child: Text(
                          'Credit Card',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        )),
                    DropdownMenuItem<String>(
                        value: 'three',
                        child: Text(
                          'Debit Card',
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
              const Row(
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
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
                width: 80,
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
              const Row(
                children: [
                  Text(
                    'Additional',
                    style: TextStyle(
                      color: Color(0xff002A53),
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
                    'Select',
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
              const Row(
                children: [
                  Text(
                    'Upgrade Plan',
                    style: TextStyle(
                      color: Color(0xff002A53),
                      fontFamily: 'Poppins-Black.ttf',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 2,
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: SizedBox(
                  width: 131.1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
