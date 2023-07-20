// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';

import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';

void navigateIfLoggedIn(BuildContext context) async {
  final flag = await flagUserStatus();
  if (flag == true) {
    final user = UserModel(
        email: FirebaseAuth.instance.currentUser!.email!,
        password: FirebaseAuth.instance.currentUser!.email!);

    await Navigator.of(context).push(
      MaterialPageRoute<HomePage>(builder: (context) => HomePage(user)),
    );
  } else {
    // ignore: inference_failure_on_function_invocation
    await showDialog(
        context: context,
        builder: (context) =>
            const Text('The credentials are incorrect. Please retry.'));
  }
}
