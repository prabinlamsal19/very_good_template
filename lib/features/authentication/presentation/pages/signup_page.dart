import 'package:flutter/material.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';
import 'package:vg_flutter_template/features/authentication/domain/navigate_if.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/login_page.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/signup_page.dart';
import 'package:vg_flutter_template/features/authentication/presentation/widgets/my_button.dart';
import 'package:vg_flutter_template/features/authentication/presentation/widgets/my_textfield.dart';
import 'package:vg_flutter_template/features/authentication/presentation/widgets/square_tile.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // text editing controllers
  final sEmailController = TextEditingController();
  final sPasswordController = TextEditingController();
  final sConfirmPasswordController = TextEditingController();
  final sUsernameController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) async {
    await createUserWithEmailAndPassword(
        sEmailController.text, sPasswordController.text);
    // ignore: use_build_context_synchronously
    navigateIfLoggedIn(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 5),
              // welcome back, you've been missed!
              Text(
                'We are pleased to be in your service :)',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: sUsernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              // email textfield
              MyTextField(
                controller: sEmailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              // password textfield
              MyTextField(
                controller: sPasswordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // confirm password textfield
              MyTextField(
                controller: sConfirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: () {
                  signUserIn(context);
                },
              ),

              const SizedBox(height: 10),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      'Login now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
