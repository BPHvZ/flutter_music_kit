import 'package:freezed_annotation/freezed_annotation.dart';

import 'music_authorization_status_enum.dart';

part 'music_authorization_status.freezed.dart';

@freezed
class MusicAuthorizationStatus with _$MusicAuthorizationStatus {
  const factory MusicAuthorizationStatus({
    String? musicUserToken,
    required MusicAuthorizationStatusEnum status,
  }) = _MusicAuthorizationStatus;

  static MusicAuthorizationStatus fromRawValue(int rawValue,
      {String? musicUserToken}) {
    switch (rawValue) {
      case 0:
        return MusicAuthorizationStatus(
            status: MusicAuthorizationStatusEnum.authorized,
            musicUserToken: musicUserToken);
      case 1:
        return const MusicAuthorizationStatus(
            status: MusicAuthorizationStatusEnum.denied);
      case 2:
        return const MusicAuthorizationStatus(
            status: MusicAuthorizationStatusEnum.notDetermined);
      case 3:
        return const MusicAuthorizationStatus(
            status: MusicAuthorizationStatusEnum.restricted);
      default:
        return const MusicAuthorizationStatus(
            status: MusicAuthorizationStatusEnum.initial);
    }
  }
}
