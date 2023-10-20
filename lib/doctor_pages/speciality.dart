import 'package:clinica_clone/doctor_pages/signup.dart';
import 'package:flutter/material.dart';

class Speciality extends StatefulWidget {
  const Speciality({super.key});

  @override
  State<Speciality> createState() => _SpecialityState();
}

class _SpecialityState extends State<Speciality> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
  bool? isChecked6 = false;
  bool? isChecked7 = false;
  bool? isChecked8 = false;
  bool? isChecked9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.87,
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),

          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text(
            'Clinica',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 34, 203, 170)),),
              const Text("Choose Speciality", style: TextStyle(fontSize: 22),),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery.of(context).size.height * 0.58,

            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5 / 1,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20)
                    ),
                   child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Checkbox(value: isChecked, onChanged: (value) {
                           setState(() {
                             isChecked = value;
                           });
                         }, activeColor: Colors.black,),
                       const Padding(
                        padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                       ],
                     ),
                   ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked1, onChanged: (value) {
                            setState(() {
                              isChecked1 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 13),child: Text("Brain Nerves", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked2, onChanged: (value) {
                            setState(() {
                              isChecked2 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 6),child: Text("Bones and Skulls", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked3, onChanged: (value) {
                            setState(() {
                              isChecked3 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 45),child: Text("Optic", style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked4, onChanged: (value) {
                            setState(() {
                              isChecked4 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 40),child: Text("General", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked5, onChanged: (value) {
                            setState(() {
                              isChecked5 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked6, onChanged: (value) {
                            setState(() {
                              isChecked6 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 10),child: Text("Internal Organs", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked7, onChanged: (value) {
                            setState(() {
                              isChecked7 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked8, onChanged: (value) {
                            setState(() {
                              isChecked8 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: isChecked9, onChanged: (value) {
                            setState(() {
                              isChecked9 = value;
                            });
                          }, activeColor: Colors.black,),
                          const Padding(
                              padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),

                ],
              ),
          ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorSignUpPage(),));
                }, child: Text('Choose')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
