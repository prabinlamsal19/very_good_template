import 'package:hive/hive.dart';

import '../model/user_model.dart';

class HiveRepository {
  persistUserData(UserModel user) async {
    var authBox = Hive.openBox<UserModel>('userBox');

    authBox.put('auth', user);
  }
}
