import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const Initial());

  Future<void> checkLoginStatus() async {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        emit(const LoggedOut());
      } else {
        emit(const LoggedIn());
      }
    });
  }
}
