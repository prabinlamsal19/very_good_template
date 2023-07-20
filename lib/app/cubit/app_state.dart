import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_flutter_template/features/authentication/data/model/user_model.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = Initial;
  const factory AppState.loggedIn({required UserModel user}) = LoggedIn;
  const factory AppState.loggedOut() = LoggedOut;
}
