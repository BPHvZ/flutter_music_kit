import 'package:freezed_annotation/freezed_annotation.dart';

import 'artwork.dart';

part 'catalog_song_response.freezed.dart';
part 'catalog_song_response.g.dart';

@freezed
class CatalogSongResponse with _$CatalogSongResponse {
  const factory CatalogSongResponse({
    String? id,
    String? href,
    String? type,
    Song? attributes,
  }) = _CatalogSongResponse;

  factory CatalogSongResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogSongResponseFromJson(json);
}

enum AudioVariant {
  dolbyAtmos,
  dolbyAudio,
  lossless,
  highResolutionLossless,
  lossyStereo
}

@freezed
class Song with _$Song {
  const factory Song({
    int? discNumber,
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
    String? artistName,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

@freezed
class PreviewAsset with _$PreviewAsset {
  const factory PreviewAsset({
    String? url,
  }) = _PreviewAsset;

  factory PreviewAsset.fromJson(Map<String, dynamic> json) =>
      _$PreviewAssetFromJson(json);
}

@freezed
class PlayParams with _$PlayParams {
  const factory PlayParams({
    String? catalogId,
    String? id,
    String? kind,
    @JsonKey(name: 'musicKit_databaseID') String? musicKitDatabaseID,
    @JsonKey(name: 'musicKit_persistentID') String? musicKitPersistentID,
  }) = _PlayParams;

  factory PlayParams.fromJson(Map<String, dynamic> json) =>
      _$PlayParamsFromJson(json);
}
