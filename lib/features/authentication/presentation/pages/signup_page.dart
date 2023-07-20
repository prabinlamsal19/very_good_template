import 'package:flutter/material.dart';
import 'package:vg_flutter_template/app/cubit/app_cubit.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/domain/firebase_repository.dart';
import 'package:vg_flutter_template/features/authentication/domain/navigate_if.dart';
import 'package:vg_flutter_template/features/authentication/domain/on_submit.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/login_page.dart';
import 'package:vg_flutter_template/features/authentication/presentation/widgets/textfield_widget.dart';
import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create TextEditingController instances
    final sNameController = TextEditingController();
    final sUsernameController = TextEditingController();
    final sGenderController = TextEditingController();
    final sEmailController = TextEditingController();
    final sPasswordController = TextEditingController();
    final sConfirmPasswordController = TextEditingController();

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
              onPressed: () async {
                await createUserWithEmailAndPassword(
                  sEmailController.text,
                  sPasswordController.text,
                  //can add here other user properties also
                );
                // ignore: use_build_context_synchronously
                navigateIfLoggedIn(context);
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
