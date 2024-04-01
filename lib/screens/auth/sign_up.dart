// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  // ignore: unused_field
  String _errorMessage = 'Password Doesn"t Match';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "CREATE YOUR ACCOUNT",
              style: TextStyle(fontSize: 22),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                const Text(
                  "Already have Account?",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            Center(
              child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(1)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 20))),
                    child: const Text("Continue With Google"),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(1)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 20))),
                  child: const Text("Continue With Email"),
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    label: Text("Full Name"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    label: Text(" Confirm Password"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_passwordController.text !=
                    _confirmPasswordController.text) {
                  setState(() {
                    _errorMessage = 'Passwords do not match';
                  });
                } else {
                  setState(() {
                    _errorMessage = '';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  });
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
