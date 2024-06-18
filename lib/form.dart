import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String? validatePhone(String? value) {
    const pattern =r'[1-9][0-9]{9}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid Phone Number like "1234567890"'
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
    const pattern = r'[0-9][0-9]{5}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid pincode like "123456"'
        : null;
  }

  String? validatePassword(String? value) {
    const pattern = r'[A-Za-z0-9!@#\$&*~]{8,}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid password "8" number'
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
        title: const Text("Add Information",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        // color: bgcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,
                inputFormatters: <TextInputFormatter>[ FilteringTextInputFormatter.singleLineFormatter,],
                keyboardType: TextInputType.name,
                controller: nameController,
                obscureText: false,
                style: TextStyle(
                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validatePhone,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,],
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  obscureText: false,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter,],
                  keyboardType: TextInputType.text,
                  controller: addressController,
                  obscureText: false,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    filled: true,
                    hintText: "city",
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    filled: true,
                    hintText: "city",
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validatePinCode,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly,],
                  keyboardType: TextInputType.number,
                  controller: pincodeController,
                  obscureText: false,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "PinCode",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validateEmail,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter,],
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  obscureText: false,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validatePassword,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter,],
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  obscureText: false,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Gender",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
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
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(390, 50),
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
                    }else if (addressController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Address Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (pincodeController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Pin code Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Email Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter Password Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (dropdownvaluecity.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter City Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (dropdownvaluestate.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "Please Enter State Fields",
                        ),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }else if (_selectedValue.toString().isEmpty) {
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
                      'address': addressController.text.toUpperCase().toString(),
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
                  child: const Text("Add",style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding commonTestField(
      hint, controller, hide, keyboardType, inputFormatters,validate) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: validate,
        inputFormatters: <TextInputFormatter>[inputFormatters],
        keyboardType: keyboardType,
        controller: controller,
        obscureText: hide,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
