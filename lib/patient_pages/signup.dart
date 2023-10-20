import 'package:clinica_clone/patient_pages/login.dart';
import 'package:clinica_clone/patient_pages/patient_homepage.dart';
import 'package:flutter/material.dart';

List<String> years = <String>[
  '2023',
  '2022',
  '2021',
  '2020',
  '2019',
  '2018',
  '2017',
  '2016',
  '2015',
  '2014',
  '2013',
  '2012',
  '2011',
  '2010',
  '2009',
  '2008',
  '2007',
  '2006',
  '2005',
  '2004',
  '2003',
  '2002',
  '2001',
  '2000',
  '1999',
  '1998',
  '1997',
  '1996',
  '1995',
  '1994',
  '1993',
  '1992',
  '1991',
  '1990',
  '1989',
  '1988',
  '1987',
  '1986',
  '1985',
  '1984',
  '1983',
  '1982',
  '1981',
  '1980',
  '1979',
  '1978',
  '1977',
  '1976',
  '1975',
  '1974',
  '1973',
  '1972',
  '1971',
  '1970',
  '1969',
  '1968',
  '1967',
  '1966',
  '1965',
  '1964',
  '1963',
  '1962',
  '1961',
  '1960',
  '1959',
  '1958',
  '1957',
  '1956',
  '1955',
  '1954',
  '1953',
  '1952',
  '1951',
  '1950',
  '1949',
  '1948',
  '1947',
  '1946',
  '1945',
  '1944',
  '1943',
  '1942',
  '1941',
  '1940',
  '1939',
  '1938',
  '1937',
  '1936',
  '1935',
  '1934',
  '1933',
  '1932',
  '1931',
  '1930',
  '1929',
  '1928',
  '1927',
  '1926',
  '1925',
  '1924',
  '1923',
  '1922',
  '1921',
  '1920',
  '1919',
  '1918',
  '1917',
  '1916',
  '1915',
  '1914',
  '1913',
  '1912',
  '1911',
  '1910',
  '1909',
  '1908',
  '1907',
  '1906',
  '1905',
  '1904',
  '1903',
  '1902',
  '1901',
  '1900',
];

List<String> nrcNo = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14'
];
List<String> nrcTown = ['MaGaDa', "KaMaYa", "UKaMa", "LaMaNa", "NaPaTa"];

List<String> nrcType = ['N', 'V'];

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _name = TextEditingController();
  String dropDownValue = years.first;
  String dropDownValue1 = nrcNo.first;
  String dropDownValue2 = nrcTown.first;
  String dropDownValue3 = nrcType.first;
  bool checkbox1 = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          builder: (context) => const LogInPage(),
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
          margin: const EdgeInsets.only(left: 40, right: 40, bottom: 60),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.83,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _name,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("NRC:"),
                        DropdownButton<String>(
                          value: dropDownValue1,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.greenAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropDownValue1 = value!;
                            });
                          },
                          items: nrcNo
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        DropdownButton<String>(
                          value: dropDownValue2,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.greenAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropDownValue2 = value!;
                            });
                          },
                          items: nrcTown
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        DropdownButton<String>(
                          value: dropDownValue3,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.greenAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropDownValue3 = value!;
                            });
                          },
                          items: nrcType
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
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
                      decoration: InputDecoration(hintText: 'NRC Number'),
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
                      decoration: InputDecoration(hintText: 'Email'),
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Phone Number'),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sex:'),
                        const Text('Male'),
                        Checkbox(
                          value: checkbox1,
                          onChanged: (value) {
                            setState(() {
                              checkbox1 = value!;
                            });
                          },
                        ),
                        const Text('Female'),
                        Checkbox(
                          value: checkbox2,
                          onChanged: (value) {
                            setState(() {
                              checkbox2 = value!;
                            });
                          },
                        ),
                      ],
                    )
                  )),
              Container(
                  width: 400,
                  height: 55,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 227, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          const Text("Date of Birth: "),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          DropdownButton<String>(
                            value: dropDownValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            elevation: 16,
                            style: const TextStyle(color: Colors.deepPurple),
                            underline: Container(
                              height: 2,
                              color: Colors.greenAccent,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropDownValue = value!;
                              });
                            },
                            items: years
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ))),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PatientHomePage(),
                      ));
                },
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 70, 254, 218),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Center(
                    child: Text('SignUp'),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
