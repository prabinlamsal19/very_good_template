import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/storage_repo.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const Initial());

  Future<void> checkStoredLogin() async {
    // final secureStorageRepository = SecureStorageRepository();
    // final data = await secureStorageRepository.readDataFSS(key: 'firebaseAuth');
    // emit(LoggedIn(user: UserModel(email: email, password: password)));

    // Future<void> checkLoginStatus() async {
    //   FirebaseAuth.instance.authStateChanges().listen((user) {
    //     if (user == null) {
    //       emit(const LoggedOut());
    //     } else {
    //       emit(const LoggedIn(user: UserModel(email: user.email , password: user.p)));
    //     }
    //   });
    // }
  }
}
