import 'package:clinica_clone/doctor_pages/add_log.dart';
import 'package:flutter/material.dart';

class PatientInfoPage extends StatefulWidget {
  const PatientInfoPage({super.key});

  @override
  State<PatientInfoPage> createState() => _PatientInfoPageState();
}

class _PatientInfoPageState extends State<PatientInfoPage> {
  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
        child: Scaffold(
          body: Column(
            children: [PatientInfoView(), ButtonsView(), Button()],
          ),
        ),
      );

  }
}

class PatientInfoView extends StatefulWidget {
  const PatientInfoView({super.key});

  @override
  State<PatientInfoView> createState() => _PatientInfoViewState();
}

class _PatientInfoViewState extends State<PatientInfoView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Patient Info",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(230, 225, 225, 1.0),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 70,
                    child: Text(
                      "Name: Htet Soe Thar",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 130,
                      left: 70,
                      child: Column(
                        children: [
                          Text(
                            "Alergic Medicine: Paracetamor",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Long Term Disease : Diabetes",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print('Hello World');
                      },
                      child: const Text('View Details'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Visited Log (Current Hospital)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(230, 225, 225, 1.0),
            ),
            child: Center(
              child: SizedBox(
                  height: 550,
                  child: ListView.separated(
                      itemBuilder: (context, index) => index == 0
                          ? LogsView(logDate: DateTime(2013, 3, 3, 10, 20))
                          : index == 1
                          ? LogsView(logDate: DateTime(2013, 3, 3, 10, 20))
                          : index == 2
                          ? LogsView(
                          logDate: DateTime(2013, 3, 3, 10, 20))
                          : index == 3
                          ? LogsView(
                          logDate: DateTime(2013, 3, 3, 10, 20))
                          : const SizedBox(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: 12)),
            ),
          )
        ],
      ),
    );
  }
}

class LogsView extends StatefulWidget {
  LogsView({super.key, required this.logDate});
  DateTime logDate;

  @override
  State<LogsView> createState() => _LogsViewState();
}

class _LogsViewState extends State<LogsView> {
  get logDate => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('hello world'),
      child: Container(
        width: 40,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.greenAccent,
        ),
        child: Center(child: Text('Logs in $logDate')),
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ElevatedButton(
        onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLogPage(),));
        },
        child: Text(
          'Add',
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0), // Change the border radius
            ),
          ),
        ),
      ),
    );
  }
}