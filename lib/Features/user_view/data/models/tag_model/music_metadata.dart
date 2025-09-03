import 'package:equatable/equatable.dart';

import 'music_info.dart';

class MusicMetadata extends Equatable {
  final String? audioCanonicalId;
  final String? audioType;
  final MusicInfo? musicInfo;
  final dynamic originalSoundInfo;
  final List<dynamic>? pinnedMediaIds;

  const MusicMetadata({
    this.audioCanonicalId,
    this.audioType,
    this.musicInfo,
    this.originalSoundInfo,
    this.pinnedMediaIds,
  });

  factory MusicMetadata.fromJson(Map<String, dynamic> json) => MusicMetadata(
        audioCanonicalId: json['audio_canonical_id'] as String?,
        audioType: json['audio_type'] as String?,
        musicInfo: json['music_info'] == null
            ? null
            : MusicInfo.fromJson(json['music_info'] as Map<String, dynamic>),
        originalSoundInfo: json['original_sound_info'] as dynamic,
        pinnedMediaIds: json['pinned_media_ids'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'audio_canonical_id': audioCanonicalId,
        'audio_type': audioType,
        'music_info': musicInfo?.toJson(),
        'original_sound_info': originalSoundInfo,
        'pinned_media_ids': pinnedMediaIds,
      };

  @override
  List<Object?> get props {
    return [
      audioCanonicalId,
      audioType,
      musicInfo,
      originalSoundInfo,
      pinnedMediaIds,
    ];
  }
}
