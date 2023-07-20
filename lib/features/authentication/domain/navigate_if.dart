// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:vg_flutter_template/features/authentication/domain/firebase_repository.dart';

import 'package:vg_flutter_template/home/presentation/pages/homepage.dart';

void navigateIfLoggedIn(BuildContext context) async {
  final flag = await flagUserStatus();
  if (flag == true) {
    await Navigator.of(context).push(
      MaterialPageRoute<HomePage>(builder: (context) => const HomePage()),
    );
  } else {
    // ignore: inference_failure_on_function_invocation
    await showDialog(
        context: context,
        builder: (context) =>
            const Text('The credentials are incorrect. Please retry.'));
  }
}
