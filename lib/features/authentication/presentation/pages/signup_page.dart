import 'package:flutter/material.dart';

import '../widgets/textfield_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create TextEditingController instances
    final TextEditingController sNameController = TextEditingController();
    final TextEditingController sUsernameController = TextEditingController();
    final TextEditingController sGenderController = TextEditingController();
    final TextEditingController sEmailController = TextEditingController();
    final TextEditingController sPasswordController = TextEditingController();
    final TextEditingController sConfirmPasswordController =
        TextEditingController();

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              controller: sNameController,
              labelText: 'Name',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              controller: sUsernameController,
              labelText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              controller: sGenderController,
              labelText: 'Gender',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              controller: sEmailController,
              labelText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              controller: sPasswordController,
              labelText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              controller: sConfirmPasswordController,
              labelText: 'Confirm Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle signup button pressed
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Signup',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
