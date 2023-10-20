import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class AddLogPage extends StatefulWidget {
  const AddLogPage({super.key});

  @override
  State<AddLogPage> createState() => _AddLogPageState();
}

class _AddLogPageState extends State<AddLogPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBarSectionView(),
                MedicalRecordAddingView(),
                CurrentSympton(),
                MedicationView(),
                NewAppointment(),
                ButtonView()
              ],
            ),
          ),

        ),
      );

  }
}

class AppBarSectionView extends StatelessWidget {
  const AppBarSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Center(
        //child: Image(image: AssetImage('assets/background.png')),
        child: Icon(Icons.account_circle_rounded),
      ),
    );
  }
}

class MedicalRecordAddingView extends StatefulWidget {
  const MedicalRecordAddingView({super.key});

  @override
  State<MedicalRecordAddingView> createState() =>
      _MedicalRecordAddingViewState();
}

class _MedicalRecordAddingViewState extends State<MedicalRecordAddingView> {
  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();
  TextEditingController _textController3 = TextEditingController();
  TextEditingController _textController4 = TextEditingController();
  String temprature = '';
  String bloodPressure = '';
  String heartRate = '';
  String oxyLevel = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.medical_information,
                  color: Colors.greenAccent,
                ),
                Text(
                  "  General Tested Data",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: _textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Temprature',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: _textController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Blood Pressure',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: _textController3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Heart Rate',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: _textController4,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Oxygen Level',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentSympton extends StatefulWidget {
  const CurrentSympton({super.key});

  @override
  State<CurrentSympton> createState() => _CurrentSymptonState();
}

class _CurrentSymptonState extends State<CurrentSympton> {
  TextEditingController _textController5 = TextEditingController();
  String currentIllness = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.event_note_sharp,
                color: Colors.greenAccent,
              ),
              Text(
                "  Current Sympton",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: TextFormField(
              controller: _textController5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Current Illness',
              ),
              minLines:
              3, // Set the minimum number of lines (1 for single line)
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class MedicationView extends StatefulWidget {
  const MedicationView({super.key});

  @override
  State<MedicationView> createState() => _MedicationViewState();
}

class _MedicationViewState extends State<MedicationView> {

  TextEditingController _textController6 = TextEditingController();
  TextEditingController _textController7 = TextEditingController();
  TextEditingController _textController8 = TextEditingController();
  TextEditingController _textController9 = TextEditingController();
  String medicine = '';
  String dosage = '';
  String injection = '';
  String note = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.medication_liquid,
                color: Colors.greenAccent,
              ),
              Text(
                "  Medication",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: TextFormField(
              controller: _textController6,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Medicine',
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: TextFormField(
              controller: _textController7,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Dosage',
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: TextFormField(
              controller: _textController8,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Injection',
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: TextFormField(
              controller: _textController9,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Note',
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class NewAppointment extends StatefulWidget {
  const NewAppointment({super.key});

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  DateTime dateTime = DateTime(2023,10, 19, 10, 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        width: MediaQuery.of(context).size.width*0.7,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.medication_liquid,
                  color: Colors.greenAccent,
                ),
                Text(
                  "Next Appointment",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            CupertinoButton(child: Text('${dateTime.day} - ${dateTime.month} - ${dateTime.year}', style: TextStyle(color: Colors.black),), onPressed: () {
              showCupertinoModalPopup(context: context, builder: (context) {
                return SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.white,
                    initialDateTime: dateTime,
                    onDateTimeChanged: (DateTime newTime) {
setState(() {
  dateTime = newTime;
});

                    },
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.date,
                  ),
                );
              }, );
            },)
          ],
        ),
      ),
    );
  }
}

class ButtonView extends StatefulWidget {
  const ButtonView({super.key});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      height: 40,
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Text('Submit', style: TextStyle(
            color: Colors.black
        ),),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Change the border radius
            ),
          ),
        ),
      ),
    );
  }
}