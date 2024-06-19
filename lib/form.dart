import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Form_Widget extends StatefulWidget {
  const Form_Widget({super.key});

  @override
  State<Form_Widget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<Form_Widget> {
  String? validatePhone(String? value) {
    const pattern = r'[7,8,9][0-9]{9}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid Phone Number like start with "7,8,9"'
        : null;
  }

  String? validateEmail(String? value) {
    const pattern = r'[a-z0-9_\-]+[@][a-z]+[\.][a-z]{2,3}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address like "Demo@demo.com"'
        : null;
  }

  String? validatePinCode(String? value) {
    const pattern = r'[1-9][0-9]{5}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid pincode like "123456"'
        : null;
  }

  String? validatePassword(String? value) {
    const pattern = r'[A-Za-z0-9!@#\$&*~]{8,}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid password, Minimum 8 number'
        : null;
  }

  int _selectedValue = 1;
  String dropdownvaluecity = 'Ahmedabad';
  String dropdownvaluestate = 'Gujarat';
  // List of items in our dropdown menu
  var city = [
    'Ahmedabad',
    'Rajkot',
    'Bhopal',
    'Indore',
    'Amaravati',
    'Vizag',
    'Chandigarh',
    'Ludhiana',
  ];
  var State = [
    'Gujarat',
    'Madhya Pradesh',
    'Andhra Pradesh',
    'Punjab',
  ];
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final pincodeController = TextEditingController();
  final databaseReference = FirebaseDatabase.instance.ref("StoreData");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Add Information",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                    maxLength: 100,
                    autovalidateMode: AutovalidateMode.always,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("Name")),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    maxLength: 10,
                    autovalidateMode: AutovalidateMode.always,
                    validator: validatePhone,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("Phone")),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    maxLength: 200,
                    autovalidateMode: AutovalidateMode.always,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    keyboardType: TextInputType.text,
                    controller: addressController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("Address")),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  decoration: commonInputDecoration("city"),
                  style: commonTextStyle(),
                  value: dropdownvaluecity,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  iconSize: 26,
                  items: city.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvaluecity = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  decoration: commonInputDecoration("State"),
                  style: commonTextStyle(),
                  value: dropdownvaluestate,
                  iconSize: 26,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  items: State.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvaluestate = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    maxLength: 6,
                    autovalidateMode: AutovalidateMode.always,
                    validator: validatePinCode,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    controller: pincodeController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("PinCode")),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: validateEmail,
                    maxLength: 50,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("Email")),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    maxLength: 50,
                    autovalidateMode: AutovalidateMode.always,
                    validator: validatePassword,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    obscureText: false,
                    style: commonTextStyle(),
                    decoration: commonInputDecoration("Password")),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Gender",
                    style: commonTextStyle()
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.black,
                                focusColor: Colors.black,
                                hoverColor: Colors.black,
                                value: 1,
                                groupValue: _selectedValue,
                                onChanged: (index) {
                                  setState(() {
                                    _selectedValue = index!;
                                  });
                                }),
                            Text(
                              'Male',
                              style: commonTextStyle()
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Colors.black,
                            focusColor: Colors.black,
                            hoverColor: Colors.black,
                            value: 2,
                            groupValue: _selectedValue,
                            onChanged: (index) {
                              setState(() {
                                _selectedValue = index!;
                              });
                            }),
                        Text(
                          'Female',
                          style: commonTextStyle()
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Colors.black,
                            focusColor: Colors.black,
                            hoverColor: Colors.black,
                            value: 3,
                            groupValue: _selectedValue,
                            onChanged: (index) {
                              setState(() {
                                _selectedValue = index!;
                              });
                            }),
                        Text(
                          'Other',
                          style: commonTextStyle()
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  onPressed: () {
                    // Check if any of the text fields are emply?
                    if (nameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Name Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return; //Don't proceed with adding data
                    } else if (phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Phone number Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (addressController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Address Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (pincodeController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Pin code Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Email Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Password Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (dropdownvaluecity.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter City Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (dropdownvaluestate.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter State Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    } else if (_selectedValue.toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Gender Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }

                    String gender = "";
                    if (_selectedValue == 1) {
                      gender = "Male";
                    } else if (_selectedValue == 2) {
                      gender = "Female";
                    } else if (_selectedValue == 3) {
                      gender = "other";
                    }

                    // when we have click the add button this items are added in database
                    databaseReference
                        .child(DateTime.now().microsecond.toString())
                        .child("Details")
                        .set({
                      'name': nameController.text.toUpperCase().toString(),
                      'phone': phoneController.text.toString(),
                      'address':
                          addressController.text.toUpperCase().toString(),
                      'email': emailController.text.toUpperCase().toString(),
                      'password': passwordController.text.toString(),
                      'pincode': pincodeController.text.toString(),
                      'city': dropdownvaluecity.toUpperCase().toString(),
                      'state': dropdownvaluestate.toUpperCase().toString(),
                      'gender': gender.toUpperCase().toString(),
                      'id': DateTime.now()
                          .microsecond
                          .toString(), // every times id is unique
                    });
                    // Clear text controllers
                    nameController.clear();
                    phoneController.clear();
                    addressController.clear();
                    passwordController.clear();
                    emailController.clear();
                    pincodeController.clear();
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration commonInputDecoration(hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.black),
    );
  }

  TextStyle commonTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500);
  }
}
