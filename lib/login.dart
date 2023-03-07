import 'package:flutter/material.dart';
import 'package:jerry_diagnosis/homepage.dart';

class LoginManager extends StatefulWidget {
  const LoginManager({Key? key}) : super(key: key);

  @override
  State<LoginManager> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginManager> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  //validation key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Globals.themeColor,
        body: Form(
      key: _formKey,
      child: Container(
        //color: Colors.grey,
        padding: EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Jerry Diagnosis Software.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _username,
                autofocus: true,
                autocorrect: false,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.green),
                    hintStyle: const TextStyle(color: Colors.black87),
                    hintText: "Enter Username",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter username.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                autofocus: true,
                autocorrect: false,
                controller: _password,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.green,
                    ),
                    hintStyle: const TextStyle(color: Colors.black87),
                    hintText: "Enter Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter password.";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "username: tom",
                style: TextStyle(fontSize: 10),
              ),
              Text("password: jerry", style: TextStyle(fontSize: 10)),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.all(16.0))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MyHomePage(title: "Jerry Diagnosis")));
                    }
                  },
                  child: const Text(
                    "  LogIn     ",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    ));
  }
}
