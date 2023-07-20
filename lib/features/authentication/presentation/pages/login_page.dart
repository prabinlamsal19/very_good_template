// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';
import 'package:vg_flutter_template/features/authentication/domain/navigate_if.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/signup_page.dart';
import 'package:vg_flutter_template/features/authentication/presentation/widgets/textfield_widget.dart';
import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create TextEditingController instances
    final lEmailController = TextEditingController();
    final lPasswordController = TextEditingController();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            const Icon(
              Icons.emoji_people,
              size: 70,
              color: Colors.black,
            ),
            const SizedBox(
              height: 50,
            ),
            TextFieldWidget(
              controller: lEmailController,
              labelText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              controller: lPasswordController,
              labelText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                await loginUserWithEmailandPassword(
                    lEmailController.text, lPasswordController.text);
                navigateIfLoggedIn(context);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet<SignupPage>(
                      isScrollControlled: true,
                      showDragHandle: true,
                      context: context,
                      builder: (context) => const SignupPage(),
                    );
                  },
                  child: const Text('Signup'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
