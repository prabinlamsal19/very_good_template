import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
import 'package:vg_flutter_template/features/authentication/domain/firebase_repository.dart';

void onSubmitSignup(User user) {
  createUserWithEmailAndPassword(user.email, user.password);
}
