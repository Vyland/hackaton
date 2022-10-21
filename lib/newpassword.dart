import 'package:flutter/material.dart';
import 'package:flutter_application_1000/loginscreen.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Password Recovery",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Kindly enter your new password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
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
                    hintText: "New Password"),
              ),
              const SizedBox(
                height: 30,
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
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
