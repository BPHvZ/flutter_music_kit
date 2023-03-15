// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_authorization_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MusicAuthorizationStatus {
  String? get musicUserToken => throw _privateConstructorUsedError;
  MusicAuthorizationStatusEnum get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicAuthorizationStatusCopyWith<MusicAuthorizationStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicAuthorizationStatusCopyWith<$Res> {
  factory $MusicAuthorizationStatusCopyWith(MusicAuthorizationStatus value,
          $Res Function(MusicAuthorizationStatus) then) =
      _$MusicAuthorizationStatusCopyWithImpl<$Res, MusicAuthorizationStatus>;
  @useResult
  $Res call({String? musicUserToken, MusicAuthorizationStatusEnum status});
}

/// @nodoc
class _$MusicAuthorizationStatusCopyWithImpl<$Res,
        $Val extends MusicAuthorizationStatus>
    implements $MusicAuthorizationStatusCopyWith<$Res> {
  _$MusicAuthorizationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicUserToken = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      musicUserToken: freezed == musicUserToken
          ? _value.musicUserToken
          : musicUserToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MusicAuthorizationStatusEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MusicAuthorizationStatusCopyWith<$Res>
    implements $MusicAuthorizationStatusCopyWith<$Res> {
  factory _$$_MusicAuthorizationStatusCopyWith(
          _$_MusicAuthorizationStatus value,
          $Res Function(_$_MusicAuthorizationStatus) then) =
      __$$_MusicAuthorizationStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? musicUserToken, MusicAuthorizationStatusEnum status});
}

/// @nodoc
class __$$_MusicAuthorizationStatusCopyWithImpl<$Res>
    extends _$MusicAuthorizationStatusCopyWithImpl<$Res,
        _$_MusicAuthorizationStatus>
    implements _$$_MusicAuthorizationStatusCopyWith<$Res> {
  __$$_MusicAuthorizationStatusCopyWithImpl(_$_MusicAuthorizationStatus _value,
      $Res Function(_$_MusicAuthorizationStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicUserToken = freezed,
    Object? status = null,
  }) {
    return _then(_$_MusicAuthorizationStatus(
      musicUserToken: freezed == musicUserToken
          ? _value.musicUserToken
          : musicUserToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MusicAuthorizationStatusEnum,
    ));
  }
}

/// @nodoc

class _$_MusicAuthorizationStatus implements _MusicAuthorizationStatus {
  const _$_MusicAuthorizationStatus(
      {this.musicUserToken, required this.status});

  @override
  final String? musicUserToken;
  @override
  final MusicAuthorizationStatusEnum status;

  @override
  String toString() {
    return 'MusicAuthorizationStatus(musicUserToken: $musicUserToken, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicAuthorizationStatus &&
            (identical(other.musicUserToken, musicUserToken) ||
                other.musicUserToken == musicUserToken) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, musicUserToken, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicAuthorizationStatusCopyWith<_$_MusicAuthorizationStatus>
      get copyWith => __$$_MusicAuthorizationStatusCopyWithImpl<
          _$_MusicAuthorizationStatus>(this, _$identity);
}

abstract class _MusicAuthorizationStatus implements MusicAuthorizationStatus {
  const factory _MusicAuthorizationStatus(
          {final String? musicUserToken,
          required final MusicAuthorizationStatusEnum status}) =
      _$_MusicAuthorizationStatus;

  @override
  String? get musicUserToken;
  @override
  MusicAuthorizationStatusEnum get status;
  @override
  @JsonKey(ignore: true)
  _$$_MusicAuthorizationStatusCopyWith<_$_MusicAuthorizationStatus>
      get copyWith => throw _privateConstructorUsedError;
}
