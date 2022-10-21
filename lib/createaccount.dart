import 'package:flutter/material.dart';
import 'package:flutter_application_1000/loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormField(
                validator: (value) {
                  return value!.isEmpty ? "Field must be fill" : null;
                },
                controller: username,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Username"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  return value!.isEmpty ? "Field must be fill" : null;
                },
                controller: email,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Email"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  return value!.isEmpty ? "Field must be fill" : null;
                },
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Password"),
              ),
              const SizedBox(
                height: 60,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                        (route) => false);
                  }
                },
                color: Colors.blue,
                height: 50,
                minWidth: double.infinity,
                child: const Text("Sign-Up"),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
