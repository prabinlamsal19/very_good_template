import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/hive_repo.dart';

import 'app_state.dart';
import 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const Initial()) {
    on<AppEvent>((event, emit) {
      event.when(
        checkStoredLoginEvent: () {
          final authBox = Hive.box<UserModel>('authBox');
          if (authBox.isNotEmpty) {
            final user = authBox.get('authBoxKey');
            print("The saved user is ${user!.email}");
            emit(LoggedIn(user: user!));
          } else {
            emit(const LoggedOut());
          }
        },
      );
    });
  }
}
