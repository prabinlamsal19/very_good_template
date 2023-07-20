import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/hive_repo.dart';

final logger = Logger();

final auth = FirebaseAuth.instance;
final user = auth.currentUser;

Future<void> createUserWithEmailAndPassword(
  String email,
  String password,
) async {
  await auth.createUserWithEmailAndPassword(email: email, password: password);
  await HiveRepository()
      .persistUserData(UserModel(email: email, password: password));
}

Future<void> loginUserWithEmailandPassword(
    String email, String password) async {
  late UserModel authCredentials;

  try {
    await auth.signInWithEmailAndPassword(email: email, password: password);
    //// assumption: if the signin fails, exception is thrown and the control moves to the catch part immediately
    await HiveRepository()
        .persistUserData(UserModel(email: email, password: password));
  } on FirebaseAuthException catch (e) {
    logger.e(e.toString());
  }
}

Future<bool> flagUserStatus() async {
  bool value = false;
  await FirebaseAuth.instance.authStateChanges().listen(
    (User? user) {
      if (user == null) {
        value = false;
      } else {
        value = true;
      }
    },
  );
  return value;
}

void logUserChanges() {
  FirebaseAuth.instance.userChanges().listen((User? user) {
    if (user == null) {
      logger.i('User is currently signed out!');
    } else {
      logger.i('User is signed in!');
    }
  });
}

void logUserData() {
  logger
    ..i(FirebaseAuth.instance.currentUser?.uid)
    ..i(FirebaseAuth.instance.currentUser?.displayName)
    ..i(FirebaseAuth.instance.currentUser?.email);
}


//// assumption: if the same key is used in the same box, each new data is overriden to the previous one.