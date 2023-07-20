import 'package:flutter/material.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';

class HomePage extends StatelessWidget {
  HomePage(this.userModel, {super.key});
  UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Center(
              child: Column(
        children: [
          const Text(
            'Homepage',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(userModel.email)
        ],
      ))),
    );
  }
}
