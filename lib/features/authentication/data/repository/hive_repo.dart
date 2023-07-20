import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';

class HiveRepository {
  final Box<UserModel> authBox = Hive.box<UserModel>('authBox');

  Future<void> persistUserData(UserModel user) async {
    await authBox.put('authBoxKey', user);
  }

  UserModel? getPersistedUserData() {
    return authBox.get('authBoxKey');
  }

  Future<void> deletePersistedData() async {
    await authBox.delete('authBoxKey');
  }
}
