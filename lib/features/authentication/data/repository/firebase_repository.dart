import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

final logger = Logger();

final auth = FirebaseAuth.instance;
final user = auth.currentUser;

Future<void> createUserWithEmailAndPassword(
  String email,
  String password,
) async {
  await auth.createUserWithEmailAndPassword(email: email, password: password);
}

Future<void> loginUserWithEmailandPassword(
    String email, String password) async {
  try {
    final userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    logger.e(e.toString());
  }
  // await auth.setPersistence(Persistence.LOCAL);
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
