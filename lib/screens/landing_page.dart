import 'package:flutter/material.dart';
import 'package:food_app/screens/auth/log_in.dart';
import 'package:food_app/screens/auth/sign_up.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/burger.jpeg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 540,
              ),
              const Text(
                "Quick Delivery",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Text(
                "at Your DoorStep",
                style: TextStyle(
                    //rgba(252, 173, 82, 1)
                    color: Color.fromRGBO(252, 173, 82, 1),
                    fontSize: 32),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()));
                      },
                      child: const Text("Login"))),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(252, 173, 82, 1)),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(1)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 20))),
                    child: const Text("Sign Up"),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
