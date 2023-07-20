part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = Initial;
  const factory AppState.loggedIn() = LoggedIn;
  const factory AppState.loggedOut() = LoggedOut;
}
