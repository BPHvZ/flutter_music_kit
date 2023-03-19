// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_song_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogSongResponse _$CatalogSongResponseFromJson(Map<String, dynamic> json) {
  return _CatalogSongResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogSongResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Song? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogSongResponseCopyWith<CatalogSongResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSongResponseCopyWith<$Res> {
  factory $CatalogSongResponseCopyWith(
          CatalogSongResponse value, $Res Function(CatalogSongResponse) then) =
      _$CatalogSongResponseCopyWithImpl<$Res, CatalogSongResponse>;
  @useResult
  $Res call({String? id, String? href, String? type, Song? attributes});

  $SongCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$CatalogSongResponseCopyWithImpl<$Res, $Val extends CatalogSongResponse>
    implements $CatalogSongResponseCopyWith<$Res> {
  _$CatalogSongResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? href = freezed,
    Object? type = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Song?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $SongCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CatalogSongResponseCopyWith<$Res>
    implements $CatalogSongResponseCopyWith<$Res> {
  factory _$$_CatalogSongResponseCopyWith(_$_CatalogSongResponse value,
          $Res Function(_$_CatalogSongResponse) then) =
      __$$_CatalogSongResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? href, String? type, Song? attributes});

  @override
  $SongCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$_CatalogSongResponseCopyWithImpl<$Res>
    extends _$CatalogSongResponseCopyWithImpl<$Res, _$_CatalogSongResponse>
    implements _$$_CatalogSongResponseCopyWith<$Res> {
  __$$_CatalogSongResponseCopyWithImpl(_$_CatalogSongResponse _value,
      $Res Function(_$_CatalogSongResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? href = freezed,
    Object? type = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_CatalogSongResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Song?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogSongResponse implements _CatalogSongResponse {
  const _$_CatalogSongResponse(
      {this.id, this.href, this.type, this.attributes});

  factory _$_CatalogSongResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogSongResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? href;
  @override
  final String? type;
  @override
  final Song? attributes;

  @override
  String toString() {
    return 'CatalogSongResponse(id: $id, href: $href, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogSongResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, href, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogSongResponseCopyWith<_$_CatalogSongResponse> get copyWith =>
      __$$_CatalogSongResponseCopyWithImpl<_$_CatalogSongResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogSongResponseToJson(
      this,
    );
  }
}

abstract class _CatalogSongResponse implements CatalogSongResponse {
  const factory _CatalogSongResponse(
      {final String? id,
      final String? href,
      final String? type,
      final Song? attributes}) = _$_CatalogSongResponse;

  factory _CatalogSongResponse.fromJson(Map<String, dynamic> json) =
      _$_CatalogSongResponse.fromJson;

  @override
  String? get id;
  @override
  String? get href;
  @override
  String? get type;
  @override
  Song? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogSongResponseCopyWith<_$_CatalogSongResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  int? get discNumber => throw _privateConstructorUsedError;
  Artwork? get artwork => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get composerName => throw _privateConstructorUsedError;
  List<PreviewAsset>? get previews => throw _privateConstructorUsedError;
  bool? get hasLyrics => throw _privateConstructorUsedError;
  int? get trackNumber => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<AudioVariant>? get audioVariants => throw _privateConstructorUsedError;
  String? get isrc => throw _privateConstructorUsedError;
  PlayParams? get playParams => throw _privateConstructorUsedError;
  bool? get isAppleDigitalMaster => throw _privateConstructorUsedError;
  int? get durationInMillis => throw _privateConstructorUsedError;
  String? get contentRating => throw _privateConstructorUsedError;
  List<String>? get genreNames => throw _privateConstructorUsedError;
  String? get albumName => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {int? discNumber,
      Artwork? artwork,
      String? name,
      String? releaseDate,
      String? composerName,
      List<PreviewAsset>? previews,
      bool? hasLyrics,
      int? trackNumber,
      String? url,
      List<AudioVariant>? audioVariants,
      String? isrc,
      PlayParams? playParams,
      bool? isAppleDigitalMaster,
      int? durationInMillis,
      String? contentRating,
      List<String>? genreNames,
      String? albumName,
      String? artistName});

  $ArtworkCopyWith<$Res>? get artwork;
  $PlayParamsCopyWith<$Res>? get playParams;
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discNumber = freezed,
    Object? artwork = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? composerName = freezed,
    Object? previews = freezed,
    Object? hasLyrics = freezed,
    Object? trackNumber = freezed,
    Object? url = freezed,
    Object? audioVariants = freezed,
    Object? isrc = freezed,
    Object? playParams = freezed,
    Object? isAppleDigitalMaster = freezed,
    Object? durationInMillis = freezed,
    Object? contentRating = freezed,
    Object? genreNames = freezed,
    Object? albumName = freezed,
    Object? artistName = freezed,
  }) {
    return _then(_value.copyWith(
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      artwork: freezed == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      composerName: freezed == composerName
          ? _value.composerName
          : composerName // ignore: cast_nullable_to_non_nullable
              as String?,
      previews: freezed == previews
          ? _value.previews
          : previews // ignore: cast_nullable_to_non_nullable
              as List<PreviewAsset>?,
      hasLyrics: freezed == hasLyrics
          ? _value.hasLyrics
          : hasLyrics // ignore: cast_nullable_to_non_nullable
              as bool?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      audioVariants: freezed == audioVariants
          ? _value.audioVariants
          : audioVariants // ignore: cast_nullable_to_non_nullable
              as List<AudioVariant>?,
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      playParams: freezed == playParams
          ? _value.playParams
          : playParams // ignore: cast_nullable_to_non_nullable
              as PlayParams?,
      isAppleDigitalMaster: freezed == isAppleDigitalMaster
          ? _value.isAppleDigitalMaster
          : isAppleDigitalMaster // ignore: cast_nullable_to_non_nullable
              as bool?,
      durationInMillis: freezed == durationInMillis
          ? _value.durationInMillis
          : durationInMillis // ignore: cast_nullable_to_non_nullable
              as int?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as String?,
      genreNames: freezed == genreNames
          ? _value.genreNames
          : genreNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumName: freezed == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkCopyWith<$Res>? get artwork {
    if (_value.artwork == null) {
      return null;
    }

    return $ArtworkCopyWith<$Res>(_value.artwork!, (value) {
      return _then(_value.copyWith(artwork: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayParamsCopyWith<$Res>? get playParams {
    if (_value.playParams == null) {
      return null;
    }

    return $PlayParamsCopyWith<$Res>(_value.playParams!, (value) {
      return _then(_value.copyWith(playParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$_SongCopyWith(_$_Song value, $Res Function(_$_Song) then) =
      __$$_SongCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? discNumber,
      Artwork? artwork,
      String? name,
      String? releaseDate,
      String? composerName,
      List<PreviewAsset>? previews,
      bool? hasLyrics,
      int? trackNumber,
      String? url,
      List<AudioVariant>? audioVariants,
      String? isrc,
      PlayParams? playParams,
      bool? isAppleDigitalMaster,
      int? durationInMillis,
      String? contentRating,
      List<String>? genreNames,
      String? albumName,
      String? artistName});

  @override
  $ArtworkCopyWith<$Res>? get artwork;
  @override
  $PlayParamsCopyWith<$Res>? get playParams;
}

/// @nodoc
class __$$_SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res, _$_Song>
    implements _$$_SongCopyWith<$Res> {
  __$$_SongCopyWithImpl(_$_Song _value, $Res Function(_$_Song) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discNumber = freezed,
    Object? artwork = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? composerName = freezed,
    Object? previews = freezed,
    Object? hasLyrics = freezed,
    Object? trackNumber = freezed,
    Object? url = freezed,
    Object? audioVariants = freezed,
    Object? isrc = freezed,
    Object? playParams = freezed,
    Object? isAppleDigitalMaster = freezed,
    Object? durationInMillis = freezed,
    Object? contentRating = freezed,
    Object? genreNames = freezed,
    Object? albumName = freezed,
    Object? artistName = freezed,
  }) {
    return _then(_$_Song(
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      artwork: freezed == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      composerName: freezed == composerName
          ? _value.composerName
          : composerName // ignore: cast_nullable_to_non_nullable
              as String?,
      previews: freezed == previews
          ? _value._previews
          : previews // ignore: cast_nullable_to_non_nullable
              as List<PreviewAsset>?,
      hasLyrics: freezed == hasLyrics
          ? _value.hasLyrics
          : hasLyrics // ignore: cast_nullable_to_non_nullable
              as bool?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      audioVariants: freezed == audioVariants
          ? _value._audioVariants
          : audioVariants // ignore: cast_nullable_to_non_nullable
              as List<AudioVariant>?,
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      playParams: freezed == playParams
          ? _value.playParams
          : playParams // ignore: cast_nullable_to_non_nullable
              as PlayParams?,
      isAppleDigitalMaster: freezed == isAppleDigitalMaster
          ? _value.isAppleDigitalMaster
          : isAppleDigitalMaster // ignore: cast_nullable_to_non_nullable
              as bool?,
      durationInMillis: freezed == durationInMillis
          ? _value.durationInMillis
          : durationInMillis // ignore: cast_nullable_to_non_nullable
              as int?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as String?,
      genreNames: freezed == genreNames
          ? _value._genreNames
          : genreNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumName: freezed == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Song implements _Song {
  const _$_Song(
      {this.discNumber,
      this.artwork,
      this.name,
      this.releaseDate,
      this.composerName,
      final List<PreviewAsset>? previews,
      this.hasLyrics,
      this.trackNumber,
      this.url,
      final List<AudioVariant>? audioVariants,
      this.isrc,
      this.playParams,
      this.isAppleDigitalMaster,
      this.durationInMillis,
      this.contentRating,
      final List<String>? genreNames,
      this.albumName,
      this.artistName})
      : _previews = previews,
        _audioVariants = audioVariants,
        _genreNames = genreNames;

  factory _$_Song.fromJson(Map<String, dynamic> json) => _$$_SongFromJson(json);

  @override
  final int? discNumber;
  @override
  final Artwork? artwork;
  @override
  final String? name;
  @override
  final String? releaseDate;
  @override
  final String? composerName;
  final List<PreviewAsset>? _previews;
  @override
  List<PreviewAsset>? get previews {
    final value = _previews;
    if (value == null) return null;
    if (_previews is EqualUnmodifiableListView) return _previews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? hasLyrics;
  @override
  final int? trackNumber;
  @override
  final String? url;
  final List<AudioVariant>? _audioVariants;
  @override
  List<AudioVariant>? get audioVariants {
    final value = _audioVariants;
    if (value == null) return null;
    if (_audioVariants is EqualUnmodifiableListView) return _audioVariants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? isrc;
  @override
  final PlayParams? playParams;
  @override
  final bool? isAppleDigitalMaster;
  @override
  final int? durationInMillis;
  @override
  final String? contentRating;
  final List<String>? _genreNames;
  @override
  List<String>? get genreNames {
    final value = _genreNames;
    if (value == null) return null;
    if (_genreNames is EqualUnmodifiableListView) return _genreNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? albumName;
  @override
  final String? artistName;

  @override
  String toString() {
    return 'Song(discNumber: $discNumber, artwork: $artwork, name: $name, releaseDate: $releaseDate, composerName: $composerName, previews: $previews, hasLyrics: $hasLyrics, trackNumber: $trackNumber, url: $url, audioVariants: $audioVariants, isrc: $isrc, playParams: $playParams, isAppleDigitalMaster: $isAppleDigitalMaster, durationInMillis: $durationInMillis, contentRating: $contentRating, genreNames: $genreNames, albumName: $albumName, artistName: $artistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Song &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.artwork, artwork) || other.artwork == artwork) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.composerName, composerName) ||
                other.composerName == composerName) &&
            const DeepCollectionEquality().equals(other._previews, _previews) &&
            (identical(other.hasLyrics, hasLyrics) ||
                other.hasLyrics == hasLyrics) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._audioVariants, _audioVariants) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.playParams, playParams) ||
                other.playParams == playParams) &&
            (identical(other.isAppleDigitalMaster, isAppleDigitalMaster) ||
                other.isAppleDigitalMaster == isAppleDigitalMaster) &&
            (identical(other.durationInMillis, durationInMillis) ||
                other.durationInMillis == durationInMillis) &&
            (identical(other.contentRating, contentRating) ||
                other.contentRating == contentRating) &&
            const DeepCollectionEquality()
                .equals(other._genreNames, _genreNames) &&
            (identical(other.albumName, albumName) ||
                other.albumName == albumName) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      discNumber,
      artwork,
      name,
      releaseDate,
      composerName,
      const DeepCollectionEquality().hash(_previews),
      hasLyrics,
      trackNumber,
      url,
      const DeepCollectionEquality().hash(_audioVariants),
      isrc,
      playParams,
      isAppleDigitalMaster,
      durationInMillis,
      contentRating,
      const DeepCollectionEquality().hash(_genreNames),
      albumName,
      artistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongCopyWith<_$_Song> get copyWith =>
      __$$_SongCopyWithImpl<_$_Song>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {final int? discNumber,
      final Artwork? artwork,
      final String? name,
      final String? releaseDate,
      final String? composerName,
      final List<PreviewAsset>? previews,
      final bool? hasLyrics,
      final int? trackNumber,
      final String? url,
      final List<AudioVariant>? audioVariants,
      final String? isrc,
      final PlayParams? playParams,
      final bool? isAppleDigitalMaster,
      final int? durationInMillis,
      final String? contentRating,
      final List<String>? genreNames,
      final String? albumName,
      final String? artistName}) = _$_Song;

  factory _Song.fromJson(Map<String, dynamic> json) = _$_Song.fromJson;

  @override
  int? get discNumber;
  @override
  Artwork? get artwork;
  @override
  String? get name;
  @override
  String? get releaseDate;
  @override
  String? get composerName;
  @override
  List<PreviewAsset>? get previews;
  @override
  bool? get hasLyrics;
  @override
  int? get trackNumber;
  @override
  String? get url;
  @override
  List<AudioVariant>? get audioVariants;
  @override
  String? get isrc;
  @override
  PlayParams? get playParams;
  @override
  bool? get isAppleDigitalMaster;
  @override
  int? get durationInMillis;
  @override
  String? get contentRating;
  @override
  List<String>? get genreNames;
  @override
  String? get albumName;
  @override
  String? get artistName;
  @override
  @JsonKey(ignore: true)
  _$$_SongCopyWith<_$_Song> get copyWith => throw _privateConstructorUsedError;
}

PreviewAsset _$PreviewAssetFromJson(Map<String, dynamic> json) {
  return _PreviewAsset.fromJson(json);
}

/// @nodoc
mixin _$PreviewAsset {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewAssetCopyWith<PreviewAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewAssetCopyWith<$Res> {
  factory $PreviewAssetCopyWith(
          PreviewAsset value, $Res Function(PreviewAsset) then) =
      _$PreviewAssetCopyWithImpl<$Res, PreviewAsset>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$PreviewAssetCopyWithImpl<$Res, $Val extends PreviewAsset>
    implements $PreviewAssetCopyWith<$Res> {
  _$PreviewAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewAssetCopyWith<$Res>
    implements $PreviewAssetCopyWith<$Res> {
  factory _$$_PreviewAssetCopyWith(
          _$_PreviewAsset value, $Res Function(_$_PreviewAsset) then) =
      __$$_PreviewAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$_PreviewAssetCopyWithImpl<$Res>
    extends _$PreviewAssetCopyWithImpl<$Res, _$_PreviewAsset>
    implements _$$_PreviewAssetCopyWith<$Res> {
  __$$_PreviewAssetCopyWithImpl(
      _$_PreviewAsset _value, $Res Function(_$_PreviewAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_PreviewAsset(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreviewAsset implements _PreviewAsset {
  const _$_PreviewAsset({this.url});

  factory _$_PreviewAsset.fromJson(Map<String, dynamic> json) =>
      _$$_PreviewAssetFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'PreviewAsset(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewAsset &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewAssetCopyWith<_$_PreviewAsset> get copyWith =>
      __$$_PreviewAssetCopyWithImpl<_$_PreviewAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreviewAssetToJson(
      this,
    );
  }
}

abstract class _PreviewAsset implements PreviewAsset {
  const factory _PreviewAsset({final String? url}) = _$_PreviewAsset;

  factory _PreviewAsset.fromJson(Map<String, dynamic> json) =
      _$_PreviewAsset.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewAssetCopyWith<_$_PreviewAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayParams _$PlayParamsFromJson(Map<String, dynamic> json) {
  return _PlayParams.fromJson(json);
}

/// @nodoc
mixin _$PlayParams {
  String? get catalogId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'musicKit_databaseID')
  String? get musicKitDatabaseID => throw _privateConstructorUsedError;
  @JsonKey(name: 'musicKit_persistentID')
  String? get musicKitPersistentID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayParamsCopyWith<PlayParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayParamsCopyWith<$Res> {
  factory $PlayParamsCopyWith(
          PlayParams value, $Res Function(PlayParams) then) =
      _$PlayParamsCopyWithImpl<$Res, PlayParams>;
  @useResult
  $Res call(
      {String? catalogId,
      String? id,
      String? kind,
      @JsonKey(name: 'musicKit_databaseID') String? musicKitDatabaseID,
      @JsonKey(name: 'musicKit_persistentID') String? musicKitPersistentID});
}

/// @nodoc
class _$PlayParamsCopyWithImpl<$Res, $Val extends PlayParams>
    implements $PlayParamsCopyWith<$Res> {
  _$PlayParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = freezed,
    Object? id = freezed,
    Object? kind = freezed,
    Object? musicKitDatabaseID = freezed,
    Object? musicKitPersistentID = freezed,
  }) {
    return _then(_value.copyWith(
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      musicKitDatabaseID: freezed == musicKitDatabaseID
          ? _value.musicKitDatabaseID
          : musicKitDatabaseID // ignore: cast_nullable_to_non_nullable
              as String?,
      musicKitPersistentID: freezed == musicKitPersistentID
          ? _value.musicKitPersistentID
          : musicKitPersistentID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayParamsCopyWith<$Res>
    implements $PlayParamsCopyWith<$Res> {
  factory _$$_PlayParamsCopyWith(
          _$_PlayParams value, $Res Function(_$_PlayParams) then) =
      __$$_PlayParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? catalogId,
      String? id,
      String? kind,
      @JsonKey(name: 'musicKit_databaseID') String? musicKitDatabaseID,
      @JsonKey(name: 'musicKit_persistentID') String? musicKitPersistentID});
}

/// @nodoc
class __$$_PlayParamsCopyWithImpl<$Res>
    extends _$PlayParamsCopyWithImpl<$Res, _$_PlayParams>
    implements _$$_PlayParamsCopyWith<$Res> {
  __$$_PlayParamsCopyWithImpl(
      _$_PlayParams _value, $Res Function(_$_PlayParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = freezed,
    Object? id = freezed,
    Object? kind = freezed,
    Object? musicKitDatabaseID = freezed,
    Object? musicKitPersistentID = freezed,
  }) {
    return _then(_$_PlayParams(
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      musicKitDatabaseID: freezed == musicKitDatabaseID
          ? _value.musicKitDatabaseID
          : musicKitDatabaseID // ignore: cast_nullable_to_non_nullable
              as String?,
      musicKitPersistentID: freezed == musicKitPersistentID
          ? _value.musicKitPersistentID
          : musicKitPersistentID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayParams implements _PlayParams {
  const _$_PlayParams(
      {this.catalogId,
      this.id,
      this.kind,
      @JsonKey(name: 'musicKit_databaseID') this.musicKitDatabaseID,
      @JsonKey(name: 'musicKit_persistentID') this.musicKitPersistentID});

  factory _$_PlayParams.fromJson(Map<String, dynamic> json) =>
      _$$_PlayParamsFromJson(json);

  @override
  final String? catalogId;
  @override
  final String? id;
  @override
  final String? kind;
  @override
  @JsonKey(name: 'musicKit_databaseID')
  final String? musicKitDatabaseID;
  @override
  @JsonKey(name: 'musicKit_persistentID')
  final String? musicKitPersistentID;

  @override
  String toString() {
    return 'PlayParams(catalogId: $catalogId, id: $id, kind: $kind, musicKitDatabaseID: $musicKitDatabaseID, musicKitPersistentID: $musicKitPersistentID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayParams &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.musicKitDatabaseID, musicKitDatabaseID) ||
                other.musicKitDatabaseID == musicKitDatabaseID) &&
            (identical(other.musicKitPersistentID, musicKitPersistentID) ||
                other.musicKitPersistentID == musicKitPersistentID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catalogId, id, kind,
      musicKitDatabaseID, musicKitPersistentID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayParamsCopyWith<_$_PlayParams> get copyWith =>
      __$$_PlayParamsCopyWithImpl<_$_PlayParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayParamsToJson(
      this,
    );
  }
}

abstract class _PlayParams implements PlayParams {
  const factory _PlayParams(
      {final String? catalogId,
      final String? id,
      final String? kind,
      @JsonKey(name: 'musicKit_databaseID')
          final String? musicKitDatabaseID,
      @JsonKey(name: 'musicKit_persistentID')
          final String? musicKitPersistentID}) = _$_PlayParams;

  factory _PlayParams.fromJson(Map<String, dynamic> json) =
      _$_PlayParams.fromJson;

  @override
  String? get catalogId;
  @override
  String? get id;
  @override
  String? get kind;
  @override
  @JsonKey(name: 'musicKit_databaseID')
  String? get musicKitDatabaseID;
  @override
  @JsonKey(name: 'musicKit_persistentID')
  String? get musicKitPersistentID;
  @override
  @JsonKey(ignore: true)
  _$$_PlayParamsCopyWith<_$_PlayParams> get copyWith =>
      throw _privateConstructorUsedError;
}
