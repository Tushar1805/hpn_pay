import 'package:flutter/material.dart';
import 'package:hpn_pay/presentation/screens/rutuja/display_screen.dart';

import 'company_drawer.dart';

class CreateForm extends StatefulWidget {
  const CreateForm({super.key});

  @override
  State<CreateForm> createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool partyname = false;
  bool name = false;
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  bool checkbox3Value = false;
  bool checkbox4Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: const CompanyDrawerWidget(),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Form Name *',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Center(
                  child: Form(
                      child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Enter name", border: OutlineInputBorder()),
                  )
                ],
              ))),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'Add Field',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Party Name'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: Colors.green,
                    value: checkbox1Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox1Value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  const Text('Type of Loan'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    value: checkbox2Value,
                    onChanged: (value) {
                      setState(() {
                        checkbox2Value = value!;
                      });
                    },
                  ),

                  // Add more Checkbox widgets as needed
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DisplayScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff002A53)),
                    child: const Text(
                      'Create Form',
                      style: TextStyle(
                          fontFamily: 'Poppins-Black.ttf',
                          fontWeight: FontWeight.w700,
                          fontSize: 17.49,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),

              // FloatingActionButton.extended(
              //   label: const Text(
              //     'Create Form',
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 15),
              //   ),
              //   backgroundColor: const Color(0xFF002A53),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => DisplayScreen(),
              //         ));
              //   },
              // ),
              const SizedBox(
                height: 30.0,
              )
            ],
          ),
        ));
  }
}
