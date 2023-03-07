import 'package:flutter/material.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key, required this.title});

  final String title;

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text('Doctors'),
      ),
      body: Column(
        children: [
          Row(children: [
            doctorView("jerry", "Bones stuff", "32689637"),
            doctorView("Amirul", "Children stuff", "67845984"),
          ]),
          Row(children: [
            doctorView("Armsy326", "Cancer Stuff", "8985948"),
            doctorView("Sandy", "Tropical stuff", "234356"),
          ]),
          Row(children: [
            doctorView("Flo", "Nutrionist", "4354564"),
            doctorView("Linn", "Waah", "7898765"),
          ]),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "These aren't real doctors.",
            style: TextStyle(fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}

Widget doctorView(username, speciality, indexNo) {
  return SizedBox(
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            children: [
              Container(
                height: 180,
                width: 170,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.yellow,
                ),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 70,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("Name:"),
                          Text("$username"),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("Speciality:"),
                          Text("$speciality"),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("Index No:"),
                          Text("$indexNo"),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Book Appointment"))
                    ]),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
