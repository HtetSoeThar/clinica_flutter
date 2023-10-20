


import 'package:clinica_clone/doctor_pages/doctor_current_hospital_log.dart';
import 'package:clinica_clone/doctor_pages/doctor_profile.dart';
import 'package:clinica_clone/doctor_pages/scan_patient.dart';

import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:clinica_clone/patient_pages/patient_profile.dart';
import 'package:clinica_clone/patient_pages/setting_page.dart';
import 'package:clinica_clone/patient_pages/user_auth_page.dart';

import 'package:clinica_clone/widgets/doctor_navi.dart';
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:provider/provider.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({super.key});

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  List<Widget> pages = const [ScanPatient(), DoctorCurrentHospitalLogPage()];
  final List<String> _suggestions = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];

  int selectedIndex = 1;
  navigateBottomBar(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 70, 254, 218)),
                child: Text(
                  'Clinica',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                  title: const Text(
                    'Profile',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DoctorProfilePage(),
                        ));
                  }),
              ListTile(
                  title: const Text(
                    'Setting',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ));
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: ListTile(
                    title: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pop(context, const DoctorHomePage());
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserAuthPage(),
                          ));
                    }),
              )
            ])),
        appBar: EasySearchBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text(''),
            onSearch: (value) => (),
            suggestions: _suggestions),
        bottomNavigationBar: DoctorBottomNav((index) {
          navigateBottomBar(index);
        }),
        body: pages[selectedIndex],
      ),
    );
  }
}
