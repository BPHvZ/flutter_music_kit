import 'package:music_kit_platform_interface/model/music_player.dart';

class PlayerControllerEvent {
  PlayerControllerEvent({
    required this.currentPlaybackTime,
    required this.playbackStatus,
  });

  final num currentPlaybackTime;
  final MusicPlayerPlaybackStatus playbackStatus;

  static PlayerControllerEvent fromMap(Map<String, dynamic> map) {
    return PlayerControllerEvent(
      currentPlaybackTime: map["currentPlaybackTime"] as num,
      playbackStatus:
          MusicPlayerPlaybackStatus.values[map['playbackStatus'] as int],
    );
  }

  @override
  String toString() {
    return 'PlayerControllerEvent(currentPlaybackTime: $currentPlaybackTime, playbackStatus: $playbackStatus)';
  }
}
