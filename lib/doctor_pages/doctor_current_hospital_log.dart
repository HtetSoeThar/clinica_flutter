
import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:clinica_clone/patient_pages/medical_record_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';

class DoctorCurrentHospitalLogPage extends StatefulWidget {
  const DoctorCurrentHospitalLogPage({super.key});

  @override
  State<DoctorCurrentHospitalLogPage> createState() => _DoctorCurrentHospitalLogPage();
}

class _DoctorCurrentHospitalLogPage extends State<DoctorCurrentHospitalLogPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value1, child) => SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.77,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.38,
                    ),
                    Container(
                      color: Colors.green,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: Image.asset('assets/images/ssc.jpg', fit:
                        BoxFit.cover,),
                    ),
                    Positioned(top: MediaQuery.of(context).size.height * 0.295,left: 20,child: const Text("SSC Hospital", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 219, 194, 1)),))

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2026))
                              .then((value) {
                            final selectDate = context.read<PickedDate>();
                            selectDate.selectedDate(value!);
                          });
                        },
                        icon: const Icon(Icons.date_range)),
                    Text(
                      DateFormat.yMd().format(value1.date),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.568,
                  child: ListView.separated(
                      itemBuilder: (context, index) =>  const MedicalRecordLogItemView(
                          image: 'assets/images/avatar.png',
                          patientName: "Patient Name")
                          ,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                      itemCount: 5),
                )
              ],
            ),
          ),
        ),

    );
  }
}

class MedicalRecordLogItemView extends StatelessWidget {
  const MedicalRecordLogItemView(
      {super.key, required this.image, required this.patientName});

  final String image;
  final String patientName;

  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value, child) => GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MedicalRecordPage(),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            height: 110,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 233, 230, 230),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(96, 56, 56, 56),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2.5),
                )
              ],
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(
                    width: 95,
                    height: 95,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      patientName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ])),
          ),
        ),
      ),
    );
  }
}
