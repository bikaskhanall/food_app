import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String? validateEmail(String? email) {
    // RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}9\.\w{2,3})?$');
    // final isEmailValid = emailRegex.hasMatch(email ?? '');
    // if () {
    //   return 'Please enter a valid email';
    // }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("LogIn"),
        backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
        // //RGBO(252, 173, 82, 1)
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => const SignIn()));
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromRGBO(252, 173, 82, 1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromRGBO(252, 173, 82, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    label: Text("Username"),
                  ),
                  validator: (name) => name!.length < 3
                      ? "name should be atleast 3 character"
                      : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.lock),
                    label: Text("Password"),
                  ),
                  validator: validateEmail,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(252, 173, 82, 1)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    }
                  },
                  child: const Text(
                    "LogIn",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
