
import 'package:clinica_clone/doctor_pages/scan_page.dart';
import 'package:clinica_clone/doctor_pages/signup.dart';
import 'package:clinica_clone/patient_pages/user_auth_page.dart';
import 'package:flutter/material.dart';

class DoctorLogInPage extends StatefulWidget {
  const DoctorLogInPage({super.key});

  @override
  State<DoctorLogInPage> createState() => _DoctorLogInPageState();
}

class _DoctorLogInPageState extends State<DoctorLogInPage> {

  final _email = TextEditingController();
  final _id = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserAuthPage(),
                      ));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin:
          const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 40),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Align(
            //alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                        width: 250,
                        height: 185,
                        child: Image.asset(
                          'assets/images/clinica_logo.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 15),
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      width: 400,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _id,
                          decoration: const InputDecoration(hintText: 'Doctor ID'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _email,
                          decoration: const InputDecoration(hintText: 'Email'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: const  EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _password,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScanHospital(),
                          ));
                    },
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 70, 254, 218),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Center(
                        child: Text('LogIn'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 47),
                    child: Row(
                      children: [
                        const Text('Do not have an account? '),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DoctorSignUpPage(),
                                ));
                          },
                          child: const Text(
                            "Sing up",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}