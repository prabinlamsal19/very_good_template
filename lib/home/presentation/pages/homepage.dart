import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vg_flutter_template/app/cubit/app_bloc.dart';
import 'package:vg_flutter_template/app/cubit/app_event.dart';
import 'package:vg_flutter_template/app/cubit/app_state.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';

class HomePage extends StatelessWidget {
  HomePage(this.userModel, {super.key});
  UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Center(
              child: Container(
        height: 200,
        child: Column(
          children: [
            const Text(
              'Homepage',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(userModel.email),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AppBloc>(context).add(const LogOutEvent());
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ))),
    );
  }
}
