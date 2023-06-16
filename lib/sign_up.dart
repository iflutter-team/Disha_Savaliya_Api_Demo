import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fnmRegs = TextEditingController();
  TextEditingController emailRegs = TextEditingController();
  TextEditingController passwordRegs = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign Up")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: fnmRegs,
              decoration: InputDecoration(hintText: "First Name"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailRegs,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordRegs,
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LogIn()),
                // );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
