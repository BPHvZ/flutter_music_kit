// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_song_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogSongResponse _$$_CatalogSongResponseFromJson(Map json) =>
    _$_CatalogSongResponse(
      id: json['id'] as String?,
      href: json['href'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Song.fromJson(Map<String, dynamic>.from(json['attributes'] as Map)),
    );

Map<String, dynamic> _$$_CatalogSongResponseToJson(
        _$_CatalogSongResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'href': instance.href,
      'type': instance.type,
      'attributes': instance.attributes?.toJson(),
    };

_$_Song _$$_SongFromJson(Map json) => _$_Song(
      discNumber: json['discNumber'] as int?,
      artwork: json['artwork'] == null
          ? null
          : Artwork.fromJson(Map<String, dynamic>.from(json['artwork'] as Map)),
      name: json['name'] as String?,
      releaseDate: json['releaseDate'] as String?,
      composerName: json['composerName'] as String?,
      previews: (json['previews'] as List<dynamic>?)
          ?.map(
              (e) => PreviewAsset.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      hasLyrics: json['hasLyrics'] as bool?,
      trackNumber: json['trackNumber'] as int?,
      url: json['url'] as String?,
      audioVariants: (json['audioVariants'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AudioVariantEnumMap, e))
          .toList(),
      isrc: json['isrc'] as String?,
      playParams: json['playParams'] == null
          ? null
          : PlayParams.fromJson(
              Map<String, dynamic>.from(json['playParams'] as Map)),
      isAppleDigitalMaster: json['isAppleDigitalMaster'] as bool?,
      durationInMillis: json['durationInMillis'] as int?,
      contentRating: json['contentRating'] as String?,
      genreNames: (json['genreNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      albumName: json['albumName'] as String?,
      artistName: json['artistName'] as String?,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'discNumber': instance.discNumber,
      'artwork': instance.artwork?.toJson(),
      'name': instance.name,
      'releaseDate': instance.releaseDate,
      'composerName': instance.composerName,
      'previews': instance.previews?.map((e) => e.toJson()).toList(),
      'hasLyrics': instance.hasLyrics,
      'trackNumber': instance.trackNumber,
      'url': instance.url,
      'audioVariants': instance.audioVariants
          ?.map((e) => _$AudioVariantEnumMap[e]!)
          .toList(),
      'isrc': instance.isrc,
      'playParams': instance.playParams?.toJson(),
      'isAppleDigitalMaster': instance.isAppleDigitalMaster,
      'durationInMillis': instance.durationInMillis,
      'contentRating': instance.contentRating,
      'genreNames': instance.genreNames,
      'albumName': instance.albumName,
      'artistName': instance.artistName,
    };

const _$AudioVariantEnumMap = {
  AudioVariant.dolbyAtmos: 'dolbyAtmos',
  AudioVariant.dolbyAudio: 'dolbyAudio',
  AudioVariant.lossless: 'lossless',
  AudioVariant.highResolutionLossless: 'highResolutionLossless',
  AudioVariant.lossyStereo: 'lossyStereo',
};

_$_PreviewAsset _$$_PreviewAssetFromJson(Map json) => _$_PreviewAsset(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PreviewAssetToJson(_$_PreviewAsset instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_PlayParams _$$_PlayParamsFromJson(Map json) => _$_PlayParams(
      catalogId: json['catalogId'] as String?,
      id: json['id'] as String?,
      kind: json['kind'] as String?,
      musicKitDatabaseID: json['musicKitDatabaseID'] as String?,
      musicKitPersistentID: json['musicKitPersistentID'] as String?,
    );

Map<String, dynamic> _$$_PlayParamsToJson(_$_PlayParams instance) =>
    <String, dynamic>{
      'catalogId': instance.catalogId,
      'id': instance.id,
      'kind': instance.kind,
      'musicKitDatabaseID': instance.musicKitDatabaseID,
      'musicKitPersistentID': instance.musicKitPersistentID,
    };
