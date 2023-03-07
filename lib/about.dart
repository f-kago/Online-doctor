// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Divider(height: 50),
          Container(
            child: Column(children: [
              Container(
                height: 300,
                width: 300,
                child: Card(
                  child: Column(children: const [
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(height: 25),
                    Text("*********************"),
                    Text(
                      """This is a medical diagnosis s/w that uses Gensim(topic modelling library) to map symptoms to a particular disease using text similarity concept.""",
                      style: TextStyle(
                          wordSpacing: 3,
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Contributors: ",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Card(child: Text("Njeri")),
              const SizedBox(height: 30),
            ]),
          )
        ],
      ),
    );
  }
}
