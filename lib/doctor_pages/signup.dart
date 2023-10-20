

import 'package:clinica_clone/doctor_pages/doctor_login.dart';
import 'package:clinica_clone/doctor_pages/scan_page.dart';
import 'package:clinica_clone/doctor_pages/speciality.dart';
import 'package:clinica_clone/patient_pages/medical_record_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DoctorSignUpPage extends StatefulWidget {
  const DoctorSignUpPage({super.key});

  @override
  State<DoctorSignUpPage> createState() => _DoctorSignUpPageState();
}

class _DoctorSignUpPageState extends State<DoctorSignUpPage> {
  final _doctorName = TextEditingController();
  final _doctorEmail = TextEditingController();
  final _doctorAge = TextEditingController();
  final _doctorPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DoctorLogInPage(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
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
          const EdgeInsets.only(left: 40, right: 40),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.87,
          child: Align(
            //alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 250,
                      child: Text(
                        'Clinica',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 34, 203, 170)),
                        textAlign: TextAlign.center,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 15),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _doctorName,
                          decoration: const InputDecoration(hintText: 'Name'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _doctorEmail,
                          decoration: const InputDecoration(hintText: 'Email'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'New Password',
                          ),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Confirm Password'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child:  Padding(
                        padding: const  EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _doctorPhone,
                          decoration: const InputDecoration(hintText: 'Phone Number'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(

                          decoration: InputDecoration(hintText: 'Gender'),
                        ),
                      )),
                  Container(
                      width: 400,
                      height: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _doctorAge,
                          decoration: const InputDecoration(hintText: 'Date Of Birth'),
                        ),
                      )),
                  ElevatedButton(onPressed: () {

                    final showDoctorInfo  = context.read<PickedDate>();
                    showDoctorInfo.showDoctorInfo(_doctorName.text, _doctorEmail.text, _doctorAge.text, _doctorPhone.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScanHospital(),
                        ));
                  }, child: Text("Sign Up")),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Speciality(),));
                    }, child: const Text('Choose speciality ->', style: TextStyle(color: Colors.black),)),
                  )
                ],
              )),
        ),
      )
    ),);
  }
}
