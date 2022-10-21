import 'package:flutter/material.dart';
import 'package:flutter_application_1000/createaccount.dart';
import 'package:flutter_application_1000/passwordrec.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  void passwordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  "Sign-in to your Freelancer Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (value) {
                      return _emailController.value.text.isEmpty
                          ? "Field cannot be empty"
                          : null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.alternate_email_rounded),
                      hintText: "Enter Email / Phone No",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      return _passwordController.value.text.isEmpty
                          ? "Field cannot be empty"
                          : null;
                    },
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: passwordVisible,
                            icon: !_passwordVisible
                                ? const Icon(Icons.visibility_rounded)
                                : const Icon(Icons.visibility_off_outlined)),
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "Password"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    //consider to use floatingbutton
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    textColor: Colors.black,
                    onPressed: () {},
                    color: Colors.blue[300],
                    height: 50,
                    minWidth: double.infinity,
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "No Account?",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegisterScreen()));
                    },
                    child: const Text(
                      "Join Now!",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 100),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PasswordRecovery()));
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
