import 'package:clinica_clone/doctor_pages/add_log.dart';
import 'package:clinica_clone/doctor_pages/view_patient_info.dart';
import 'package:flutter/material.dart';

class ScanPatient extends StatefulWidget {
  const ScanPatient({super.key});

  @override
  State<ScanPatient> createState() => _ScanPatientState();
}

class _ScanPatientState extends State<ScanPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: const Text(
            'Scan for Patient'
        ), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientInfoPage(),));

        }),
      ),
    );
  }
}
