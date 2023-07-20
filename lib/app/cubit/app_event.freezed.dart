// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStoredLoginEvent,
    required TResult Function() logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStoredLoginEvent,
    TResult? Function()? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStoredLoginEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStoredLoginEvnet value)
        checkStoredLoginEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckStoredLoginEvnetCopyWith<$Res> {
  factory _$$CheckStoredLoginEvnetCopyWith(_$CheckStoredLoginEvnet value,
          $Res Function(_$CheckStoredLoginEvnet) then) =
      __$$CheckStoredLoginEvnetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckStoredLoginEvnetCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckStoredLoginEvnet>
    implements _$$CheckStoredLoginEvnetCopyWith<$Res> {
  __$$CheckStoredLoginEvnetCopyWithImpl(_$CheckStoredLoginEvnet _value,
      $Res Function(_$CheckStoredLoginEvnet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckStoredLoginEvnet implements CheckStoredLoginEvnet {
  const _$CheckStoredLoginEvnet();

  @override
  String toString() {
    return 'AppEvent.checkStoredLoginEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckStoredLoginEvnet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStoredLoginEvent,
    required TResult Function() logOutEvent,
  }) {
    return checkStoredLoginEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStoredLoginEvent,
    TResult? Function()? logOutEvent,
  }) {
    return checkStoredLoginEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStoredLoginEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (checkStoredLoginEvent != null) {
      return checkStoredLoginEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStoredLoginEvnet value)
        checkStoredLoginEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return checkStoredLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return checkStoredLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (checkStoredLoginEvent != null) {
      return checkStoredLoginEvent(this);
    }
    return orElse();
  }
}

abstract class CheckStoredLoginEvnet implements AppEvent {
  const factory CheckStoredLoginEvnet() = _$CheckStoredLoginEvnet;
}

/// @nodoc
abstract class _$$LogOutEventCopyWith<$Res> {
  factory _$$LogOutEventCopyWith(
          _$LogOutEvent value, $Res Function(_$LogOutEvent) then) =
      __$$LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LogOutEvent>
    implements _$$LogOutEventCopyWith<$Res> {
  __$$LogOutEventCopyWithImpl(
      _$LogOutEvent _value, $Res Function(_$LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEvent implements LogOutEvent {
  const _$LogOutEvent();

  @override
  String toString() {
    return 'AppEvent.logOutEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStoredLoginEvent,
    required TResult Function() logOutEvent,
  }) {
    return logOutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStoredLoginEvent,
    TResult? Function()? logOutEvent,
  }) {
    return logOutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStoredLoginEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStoredLoginEvnet value)
        checkStoredLoginEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return logOutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return logOutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStoredLoginEvnet value)? checkStoredLoginEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent(this);
    }
    return orElse();
  }
}

abstract class LogOutEvent implements AppEvent {
  const factory LogOutEvent() = _$LogOutEvent;
}
