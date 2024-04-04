import 'package:farm_linker/signinpage.dart';
import 'package:flutter/material.dart';


class Registeraccounts extends StatelessWidget {
  const Registeraccounts({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 30,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                  ),
                  
                  onPressed: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage(
                              )),
                    );
                   },
                  child: const Icon(
                    size: 40,
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 250,
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 102, 172, 123),
                    ),
                    
                    onPressed: () {  },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.man,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Create User Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 102, 172, 123),
                    ),
                   
                    onPressed: () {  },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.man,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Create Admin Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}