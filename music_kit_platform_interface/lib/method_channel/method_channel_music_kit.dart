import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:music_kit_platform_interface/music_kit_platform_interface.dart';

class MethodChannelMusicKit extends MusicKitPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('plugins.misi.app/music_kit');

  @visibleForTesting
  final playerStateEventChannel =
      const EventChannel('plugins.misi.app/music_kit/player_state');

  @visibleForTesting
  final playerQueueEventChannel =
      const EventChannel('plugins.misi.app/music_kit/player_queue');

  @visibleForTesting
  final musicSubcriptionEventChannel =
      const EventChannel('plugins.misi.app/music_kit/music_subscription');

  @visibleForTesting
  final playerControllerEventChannel =
      const EventChannel('plugins.misi.app/music_kit/player_controller');

  @override
  Future<void> initialize(String developerToken,
      {String? musicUserToken}) async {
    return methodChannel.invokeMethod(
      'initialize',
      {'developerToken': developerToken, 'musicUserToken': musicUserToken},
    );
  }

  @override
  Future<MusicAuthorizationStatus> requestAuthorizationStatus() async {
    try {
      final resp = await methodChannel
          .invokeMapMethod<String, dynamic>('requestAuthorizationStatus');
      return MusicAuthorizationStatus.fromRawValue(
        resp!['status'].toInt(),
        musicUserToken: resp['musicUserToken']?.toString(),
      );
    } catch (_) {
      return const MusicAuthorizationStatus(
        status: MusicAuthorizationStatusEnum.notDetermined,
      );
    }
  }

  @override
  Future<MusicAuthorizationStatus> get authorizationStatus async {
    final resp = await methodChannel
        .invokeMapMethod<String, dynamic>('authorizationStatus');
    return MusicAuthorizationStatus.fromRawValue(
      resp!['status'].toInt(),
      musicUserToken: resp['musicUserToken']?.toString(),
    );
  }

  @override
  Future<String> requestDeveloperToken() async {
    final resp =
        await methodChannel.invokeMethod<String>('requestDeveloperToken');
    return resp ?? '';
  }

  @override
  Future<String> requestUserToken(String developerToken) async {
    try {
      final resp =
          await methodChannel.invokeMethod('requestUserToken', developerToken);
      return resp.toString();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> get currentCountryCode async {
    final resp = await methodChannel.invokeMethod<String>('currentCountryCode');
    return resp!;
  }

  Stream<MusicSubscription>? _onSubscriptionUpdated;

  @override
  Stream<MusicSubscription> get onSubscriptionUpdated {
    _onSubscriptionUpdated ??=
        musicSubcriptionEventChannel.receiveBroadcastStream().map(
      (event) {
        final json = event.cast<String, dynamic>();
        return MusicSubscription.fromMap(json);
      },
    );
    return _onSubscriptionUpdated!;
  }

  Stream<PlayerControllerEvent>? _playerControllerEvent;

  @override
  Stream<PlayerControllerEvent> get playerControllerEvent {
    _playerControllerEvent ??=
        playerControllerEventChannel.receiveBroadcastStream().map(
      (event) {
        final json = event.cast<String, dynamic>();
        return PlayerControllerEvent.fromMap(json);
      },
    );
    return _playerControllerEvent!;
  }

  ///
  @override
  Future<bool> get isPreparedToPlay async {
    final resp = await methodChannel.invokeMethod<bool>('isPreparedToPlay');
    return resp ?? false;
  }

  @override
  Future<double> get playbackTime async {
    final resp = await methodChannel.invokeMethod<double>('playbackTime');
    return resp ?? 0;
  }

  @override
  Future<MusicPlayerState> get musicPlayerState async {
    final resp = await methodChannel
        .invokeMapMethod<String, dynamic>('musicPlayerState');
    return MusicPlayerState.fromMap(resp!);
  }

  Stream<MusicPlayerState>? _onMusicPlayerStateChanged;

  @override
  Stream<MusicPlayerState> get onMusicPlayerStateChanged {
    _onMusicPlayerStateChanged ??=
        playerStateEventChannel.receiveBroadcastStream().map(
      (event) {
        final json = event.cast<String, dynamic>();
        return MusicPlayerState.fromMap(json);
      },
    );
    return _onMusicPlayerStateChanged!;
  }

  @override
  Future<void> beginSeekingBackward() {
    return methodChannel.invokeMethod('beginSeekingBackward');
  }

  @override
  Future<void> beginSeekingForward() {
    return methodChannel.invokeMethod('beginSeekingForward');
  }

  @override
  Future<void> endSeeking() {
    return methodChannel.invokeMethod('endSeeking');
  }

  @override
  Future<void> pause() async {
    return methodChannel.invokeMethod('pause');
  }

  @override
  Future<void> play() async {
    return methodChannel.invokeMethod('play');
  }

  @override
  Future<void> prepareToPlay() async {
    return methodChannel.invokeMethod('prepareToPlay');
  }

  @override
  Future<void> restartCurrentEntry() async {
    return methodChannel.invokeMethod('restartCurrentEntry');
  }

  @override
  Future<void> skipToNextEntry() async {
    return methodChannel.invokeMethod('skipToNextEntry');
  }

  @override
  Future<void> skipToPreviousEntry() async {
    return methodChannel.invokeMethod('skipToPreviousEntry');
  }

  @override
  Future<void> stop() async {
    return methodChannel.invokeMethod('stop');
  }

  @override
  Future<void> setQueue(String type, {required ResourceObject item}) {
    return methodChannel.invokeMethod('setQueue', {
      'type': type,
      'item': item,
    });
  }

  @override
  Future<void> setQueueWithItems(
    String type, {
    required List<ResourceObject>? items,
    int? startingAt,
  }) {
    return methodChannel.invokeMethod('setQueueWithItems', {
      'type': type,
      'items': items,
      'startingAt': startingAt,
    });
  }

  @override
  Future<MusicPlayerQueue?> getQueue() {
    return methodChannel.invokeMethod('getQueue').then(
      (value) {
        if (value == null) return null;
        final json = Map<String, Object?>.from(value);
        return MusicPlayerQueue.fromJson(json);
      },
    );
  }

  @override
  Future<void> removeItemWithId(String musicItemID) async {
    return methodChannel
        .invokeMethod('removeItemWithId', {"musicItemID": musicItemID});
  }

  Stream<MusicPlayerQueue>? _onPlayerQueueChanged;

  @override
  Stream<MusicPlayerQueue> get onPlayerQueueChanged {
    _onPlayerQueueChanged ??=
        playerQueueEventChannel.receiveBroadcastStream().map(
      (event) {
        final json = Map<String, Object?>.from(event);
        return MusicPlayerQueue.fromJson(json);
      },
    );
    return _onPlayerQueueChanged!;
  }

  @override
  Future<MusicPlayerRepeatMode> get repeatMode async {
    final resp = await methodChannel.invokeMethod<int>('repeatMode');
    return MusicPlayerRepeatMode.values[resp ?? 0];
  }

  @override
  Future<void> setRepeatMode(MusicPlayerRepeatMode mode) {
    return methodChannel.invokeMethod('setRepeatMode', mode.index);
  }

  @override
  Future<MusicPlayerRepeatMode> toggleRepeatMode() async {
    final resp = await methodChannel.invokeMethod<int>('toggleRepeatMode');
    return MusicPlayerRepeatMode.values[resp ?? 0];
  }

  @override
  Future<MusicPlayerShuffleMode> get shuffleMode async {
    final resp = await methodChannel.invokeMethod<int>('shuffleMode');
    return MusicPlayerShuffleMode.values[resp ?? 0];
  }

  @override
  Future<void> setShuffleMode(MusicPlayerShuffleMode mode) {
    return methodChannel.invokeMethod('setShuffleMode', mode.index);
  }

  @override
  Future<MusicPlayerShuffleMode> toggleShuffleMode() async {
    final resp = await methodChannel.invokeMethod<int>('toggleShuffleMode');
    return MusicPlayerShuffleMode.values[resp ?? 0];
  }

  @override
  Future<CatalogSongResponse?> searchSongByISRC(String isrc,
      [String fallbackSearchTerm = '']) async {
    String? jsonString = await methodChannel.invokeMethod<String>(
        'searchSongByISRC',
        {"isrc": isrc, "fallbackSearchTerm": fallbackSearchTerm});
    if (jsonString == null) return null;
    Map<String, dynamic> json = jsonDecode(jsonString);
    return CatalogSongResponse.fromJson(json);
  }
}
