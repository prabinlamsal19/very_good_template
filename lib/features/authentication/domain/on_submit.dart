import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/firebase_repository.dart';

void onSubmitSignup(UserModel user) {
  createUserWithEmailAndPassword(user.email, user.password);
}
