import 'package:clinica_clone/doctor_pages/doctor_homepage.dart';
import 'package:flutter/material.dart';

class ScanHospital extends StatefulWidget {
  const ScanHospital({super.key});

  @override
  State<ScanHospital> createState() => _ScanHospitalState();
}

class _ScanHospitalState extends State<ScanHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: const Text(
          'Scan for Hospital'
        ), onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorHomePage(),));
        }),
      ),
    );
  }
}
