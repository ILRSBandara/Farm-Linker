import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_linker/screen/adminsuccess.dart';
import 'package:farm_linker/screen/signinpage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdminProfileState createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  final TextEditingController nameEditingController = TextEditingController();

  final TextEditingController tpEditingController = TextEditingController();

  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController cpasswordEditingController =
      TextEditingController();
  final TextEditingController addressEditingController =
      TextEditingController();
  late CollectionReference collectionReference;

  @override
  void initState() {
    super.initState();
    collectionReference = FirebaseFirestore.instance.collection('admin');
  }

  void _addItem() async {
    await collectionReference.add({
      'name': nameEditingController.text,
      'rmail': tpEditingController.text,
      'passwotd': passwordEditingController.text,
      'cpasswotd': cpasswordEditingController.text,
      'address': addressEditingController.text,

      // String name = nameEditingController.text;
      // String email = emailEditingController.text;
      // String password = passwordEditingController.text;
      // String cpassword = cpasswordEditingController.text;
    });

    nameEditingController.clear();
    tpEditingController.clear();
    // _numberEditingController.clear();
    passwordEditingController.clear();
    cpasswordEditingController.clear();
    addressEditingController.clear();

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => const AdminSuccess()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "CREATE ADMIN\n     ACCOUNT",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: nameEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Name',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: tpEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Telephone Number',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: passwordEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: cpasswordEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: addressEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Address',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                    ),
                    onPressed: _addItem,
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
