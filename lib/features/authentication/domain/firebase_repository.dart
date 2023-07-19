import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

final logger = Logger();

final user = FirebaseAuth.instance.currentUser;

Future<void> createUserWithEmailAndPassword(
  String email,
  String password,
) async {
  await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);
}

void logUserStatus() {
  FirebaseAuth.instance.authStateChanges().listen(
    (User? user) {
      if (user == null) {
        logger.i('User is currently signed out');
      } else {
        logger.i('User is signed in!');
      }
    },
  );
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
