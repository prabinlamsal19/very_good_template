import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkStoredLoginEvent() = CheckStoredLoginEvnet;

  const factory AppEvent.logOutEvent() = LogOutEvent;
}
