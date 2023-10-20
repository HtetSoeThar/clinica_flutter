

import 'package:clinica_clone/doctor_pages/doctor_homepage.dart';
import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:clinica_clone/patient_pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage({super.key});

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  final degree = TextEditingController();
  String doctorDegree = 'Add Degree';

  addDegree() {
    Navigator.of(context).pop(degree.text);
  }
  Future<String?> openDialog ()  {return  showDialog<String>(context: context, builder: (context) {




      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Doctro's Degree"),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Degree"
          ),
          controller: degree,
        ),
        actions: [
          ElevatedButton(onPressed: addDegree, child: Text("Add"))
        ],
      );

  });}
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(builder: (context, value, child) {
     return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingPage(),
                    ));
              },
              child: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorHomePage(),)),
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
          child: Center(
              child: Container(
                margin:
                const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 10),
                width: double.infinity,
                height: 650,
                child: Align(
                  //alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 216, 216, 216),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(80))),
                                ),
                                const Positioned(
                                  left: 47,
                                  top: 35,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 50,
                                      ),
                                      Text(
                                        "Upload",
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(80)),
                                    // child: Image.asset(
                                    //   'assets/images/bitch.jpg',
                                    //   fit: BoxFit.cover,
                                    // ),
                                  ),
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Text(
                            value.doctorName,
                            style: const  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 170,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 227, 227, 227),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Medical ID",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const SettingPage(),
                                            ));
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Icon(Icons.edit),
                                      ),
                                    )
                                  ],
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Age : ${value.doctorAge}",
                                        style: const TextStyle(fontSize: 18))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Email : ${value.doctorEmail}",
                                        style: const TextStyle(fontSize: 18))),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child:  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Phone : ${value.doctorPhone}",
                                          style: const TextStyle(fontSize: 19))),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 227, 227, 227),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(doctorDegree, style: TextStyle(fontSize: 18),), IconButton(onPressed: () async {
                                final degreeName = await openDialog();
                                setState(() {
                                  doctorDegree = degreeName!;
                                });
                                }, icon: Icon(Icons.add))],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              )),
        ),
      );

    },

    );

  }
}
