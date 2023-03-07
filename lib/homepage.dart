import 'package:flutter/material.dart';
import 'package:jerry_diagnosis/noresult.dart';
import 'package:jerry_diagnosis/result.dart';
import 'package:jerry_diagnosis/sidebar/siderbar_file.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _symptoms = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const SideBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.black.withAlpha(55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      // decoration: BoxDecoration(color: Colors.blueGrey),
                      height: 80,
                      width: 260,
                      child: TextFormField(
                        obscureText: false,
                        autofocus: true,
                        autocorrect: false,
                        controller: _symptoms,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.abc,
                              color: Colors.green,
                            ),
                            hintStyle: const TextStyle(color: Colors.black87),
                            hintText: "Enter Symptoms",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter symptoms.";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    print("I'll query");
                  },
                  child: Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red,
                    ),
                    child: const Center(child: Text("Query")),
                  ),
                )
              ],
            ),
          ),
          //const InitialState()
          const ResultWidget()
        ],
      ),
    );
  }
}
