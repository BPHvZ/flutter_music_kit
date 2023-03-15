// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artwork _$ArtworkFromJson(Map<String, dynamic> json) {
  return _Artwork.fromJson(json);
}

/// @nodoc
mixin _$Artwork {
  String? get bgColor => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;
  String? get textColor1 => throw _privateConstructorUsedError;
  String? get textColor2 => throw _privateConstructorUsedError;
  String? get textColor3 => throw _privateConstructorUsedError;
  String? get textColor4 => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  num get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkCopyWith<Artwork> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkCopyWith<$Res> {
  factory $ArtworkCopyWith(Artwork value, $Res Function(Artwork) then) =
      _$ArtworkCopyWithImpl<$Res, Artwork>;
  @useResult
  $Res call(
      {String? bgColor,
      num height,
      String? textColor1,
      String? textColor2,
      String? textColor3,
      String? textColor4,
      String url,
      num width});
}

/// @nodoc
class _$ArtworkCopyWithImpl<$Res, $Val extends Artwork>
    implements $ArtworkCopyWith<$Res> {
  _$ArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? height = null,
    Object? textColor1 = freezed,
    Object? textColor2 = freezed,
    Object? textColor3 = freezed,
    Object? textColor4 = freezed,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      textColor1: freezed == textColor1
          ? _value.textColor1
          : textColor1 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor2: freezed == textColor2
          ? _value.textColor2
          : textColor2 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor3: freezed == textColor3
          ? _value.textColor3
          : textColor3 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor4: freezed == textColor4
          ? _value.textColor4
          : textColor4 // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtworkCopyWith<$Res> implements $ArtworkCopyWith<$Res> {
  factory _$$_ArtworkCopyWith(
          _$_Artwork value, $Res Function(_$_Artwork) then) =
      __$$_ArtworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bgColor,
      num height,
      String? textColor1,
      String? textColor2,
      String? textColor3,
      String? textColor4,
      String url,
      num width});
}

/// @nodoc
class __$$_ArtworkCopyWithImpl<$Res>
    extends _$ArtworkCopyWithImpl<$Res, _$_Artwork>
    implements _$$_ArtworkCopyWith<$Res> {
  __$$_ArtworkCopyWithImpl(_$_Artwork _value, $Res Function(_$_Artwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? height = null,
    Object? textColor1 = freezed,
    Object? textColor2 = freezed,
    Object? textColor3 = freezed,
    Object? textColor4 = freezed,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_$_Artwork(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      textColor1: freezed == textColor1
          ? _value.textColor1
          : textColor1 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor2: freezed == textColor2
          ? _value.textColor2
          : textColor2 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor3: freezed == textColor3
          ? _value.textColor3
          : textColor3 // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor4: freezed == textColor4
          ? _value.textColor4
          : textColor4 // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artwork implements _Artwork {
  const _$_Artwork(
      {this.bgColor,
      required this.height,
      this.textColor1,
      this.textColor2,
      this.textColor3,
      this.textColor4,
      required this.url,
      required this.width});

  factory _$_Artwork.fromJson(Map<String, dynamic> json) =>
      _$$_ArtworkFromJson(json);

  @override
  final String? bgColor;
  @override
  final num height;
  @override
  final String? textColor1;
  @override
  final String? textColor2;
  @override
  final String? textColor3;
  @override
  final String? textColor4;
  @override
  final String url;
  @override
  final num width;

  @override
  String toString() {
    return 'Artwork(bgColor: $bgColor, height: $height, textColor1: $textColor1, textColor2: $textColor2, textColor3: $textColor3, textColor4: $textColor4, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artwork &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.textColor1, textColor1) ||
                other.textColor1 == textColor1) &&
            (identical(other.textColor2, textColor2) ||
                other.textColor2 == textColor2) &&
            (identical(other.textColor3, textColor3) ||
                other.textColor3 == textColor3) &&
            (identical(other.textColor4, textColor4) ||
                other.textColor4 == textColor4) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bgColor, height, textColor1,
      textColor2, textColor3, textColor4, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtworkCopyWith<_$_Artwork> get copyWith =>
      __$$_ArtworkCopyWithImpl<_$_Artwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtworkToJson(
      this,
    );
  }
}

abstract class _Artwork implements Artwork {
  const factory _Artwork(
      {final String? bgColor,
      required final num height,
      final String? textColor1,
      final String? textColor2,
      final String? textColor3,
      final String? textColor4,
      required final String url,
      required final num width}) = _$_Artwork;

  factory _Artwork.fromJson(Map<String, dynamic> json) = _$_Artwork.fromJson;

  @override
  String? get bgColor;
  @override
  num get height;
  @override
  String? get textColor1;
  @override
  String? get textColor2;
  @override
  String? get textColor3;
  @override
  String? get textColor4;
  @override
  String get url;
  @override
  num get width;
  @override
  @JsonKey(ignore: true)
  _$$_ArtworkCopyWith<_$_Artwork> get copyWith =>
      throw _privateConstructorUsedError;
}
