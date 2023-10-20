import 'package:flutter/material.dart';

class PickedDate extends ChangeNotifier {
  DateTime date = DateTime.now();

  String name = '';

  String doctorName = '';
  String doctorEmail = '';
  String doctorAge = '';
  String doctorPhone = '';

  selectedDate(DateTime pickedDate) {
    date = pickedDate;

    notifyListeners();
  }

  showDoctorInfo (String name, String email, String age, String phone) {
    doctorName = name;
    doctorEmail = email;
    doctorAge = age;
    doctorPhone = phone;
    notifyListeners();
  }
}
