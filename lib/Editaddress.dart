// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class EditAddressScreen extends StatefulWidget {
  @override
  _EditAddressScreenState createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  String _fullName = "";
  String _mobileNumber = "";
  String _area = "";
  String _address = "";
  String _landmark = "";
  String _addressLabel = "";

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.green, // Set primary color to green
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color.fromARGB(
              255, 150, 251, 160), // Set fill color for input fields
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w300), // Set hint text color
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Address',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your Full Name',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your full name' : null,
                  onSaved: (value) => setState(() => _fullName = value!),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your mobile number' : null,
                  onSaved: (value) => setState(() => _mobileNumber = value!),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your Area',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your area' : null,
                  onSaved: (value) => setState(() => _area = value!),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your address' : null,
                  onSaved: (value) => setState(() => _address = value!),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Landmark',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter landmark' : null,
                  onSaved: (value) => setState(() => _landmark = value!),
                ),
                SizedBox(height: 30),
                Divider(),
                Text(
                  'Address Label (Optional)',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Home'),
                      Radio(
                        value: 'Home',
                        groupValue: _addressLabel,
                        onChanged: (value) =>
                            setState(() => _addressLabel = value as String),
                      ),
                      Text('Shop'),
                      Radio(
                        value: 'Shop',
                        groupValue: _addressLabel,
                        onChanged: (value) =>
                            setState(() => _addressLabel = value as String),
                      ),
                      Text('Office'),
                      Radio(
                        value: 'Office',
                        groupValue: _addressLabel,
                        onChanged: (value) =>
                            setState(() => _addressLabel = value as String),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Process address information here (e.g., save to database)
                      print(
                          'Full Name: $_fullName, Mobile Number: $_mobileNumber, Area: $_area, Address: $_address, Landmark: $_landmark, Label: $_addressLabel');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 74, 239,
                        79), // Set button background color to green
                  ),
                  child: Text(
                    'Save Details',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
