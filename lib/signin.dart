import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome \nAboard!",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 46,
                fontFamily: "Sans Serif",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            authButtons(context, () {
              context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            }, "Login", Colors.green),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Text(
                "OR",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Sans Serif",
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            authButtons(context, () {
              context.read<AuthenticationService>().signUp(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            }, "Register", Colors.black87),
          ],
        ),
      ),
    );
  }

  InkWell authButtons(BuildContext context, VoidCallback tapFunction,
      String btnName, Color btnColor) {
    return InkWell(
      onTap: tapFunction,
      child: Container(
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * .95,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          btnName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
