import 'package:farm_linker/screen/adminprofile.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class AdminSuccess extends StatelessWidget {
  const AdminSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/img/user.png',
                    width: 220,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(201, 166, 245, 190),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          const Text(
                            "Your Registration Is \n      Successful !",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 9, 9, 9),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'asset/img/ok.png',
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 102, 172, 123),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminProfile()),
                  );
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
