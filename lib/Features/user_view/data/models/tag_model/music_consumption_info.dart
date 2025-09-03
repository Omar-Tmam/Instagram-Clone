import 'package:equatable/equatable.dart';

import 'audio_muting_info.dart';
import 'ig_artist.dart';

class MusicConsumptionInfo extends Equatable {
  final bool? allowMediaCreationWithMusic;
  final int? audioAssetStartTimeInMs;
  final List<dynamic>? audioFilterInfos;
  final AudioMutingInfo? audioMutingInfo;
  final dynamic containsLyrics;
  final dynamic derivedContentId;
  final dynamic displayLabels;
  final dynamic formattedClipsMediaCount;
  final IgArtist? igArtist;
  final bool? isBookmarked;
  final bool? isTrendingInClips;
  final dynamic musicCreationRestrictionReason;
  final int? overlapDurationInMs;
  final String? placeholderProfilePicUrl;
  final dynamic previousTrendRank;
  final bool? shouldAllowMusicEditing;
  final bool? shouldMuteAudio;
  final String? shouldMuteAudioReason;
  final dynamic shouldMuteAudioReasonType;
  final dynamic trendRank;
  final dynamic userNotes;

  const MusicConsumptionInfo({
    this.allowMediaCreationWithMusic,
    this.audioAssetStartTimeInMs,
    this.audioFilterInfos,
    this.audioMutingInfo,
    this.containsLyrics,
    this.derivedContentId,
    this.displayLabels,
    this.formattedClipsMediaCount,
    this.igArtist,
    this.isBookmarked,
    this.isTrendingInClips,
    this.musicCreationRestrictionReason,
    this.overlapDurationInMs,
    this.placeholderProfilePicUrl,
    this.previousTrendRank,
    this.shouldAllowMusicEditing,
    this.shouldMuteAudio,
    this.shouldMuteAudioReason,
    this.shouldMuteAudioReasonType,
    this.trendRank,
    this.userNotes,
  });

  factory MusicConsumptionInfo.fromJson(Map<String, dynamic> json) {
    return MusicConsumptionInfo(
      allowMediaCreationWithMusic:
          json['allow_media_creation_with_music'] as bool?,
      audioAssetStartTimeInMs: json['audio_asset_start_time_in_ms'] as int?,
      audioFilterInfos: json['audio_filter_infos'] as List<dynamic>?,
      audioMutingInfo: json['audio_muting_info'] == null
          ? null
          : AudioMutingInfo.fromJson(
              json['audio_muting_info'] as Map<String, dynamic>),
      containsLyrics: json['contains_lyrics'] as dynamic,
      derivedContentId: json['derived_content_id'] as dynamic,
      displayLabels: json['display_labels'] as dynamic,
      formattedClipsMediaCount: json['formatted_clips_media_count'] as dynamic,
      igArtist: json['ig_artist'] == null
          ? null
          : IgArtist.fromJson(json['ig_artist'] as Map<String, dynamic>),
      isBookmarked: json['is_bookmarked'] as bool?,
      isTrendingInClips: json['is_trending_in_clips'] as bool?,
      musicCreationRestrictionReason:
          json['music_creation_restriction_reason'] as dynamic,
      overlapDurationInMs: json['overlap_duration_in_ms'] as int?,
      placeholderProfilePicUrl: json['placeholder_profile_pic_url'] as String?,
      previousTrendRank: json['previous_trend_rank'] as dynamic,
      shouldAllowMusicEditing: json['should_allow_music_editing'] as bool?,
      shouldMuteAudio: json['should_mute_audio'] as bool?,
      shouldMuteAudioReason: json['should_mute_audio_reason'] as String?,
      shouldMuteAudioReasonType:
          json['should_mute_audio_reason_type'] as dynamic,
      trendRank: json['trend_rank'] as dynamic,
      userNotes: json['user_notes'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'allow_media_creation_with_music': allowMediaCreationWithMusic,
        'audio_asset_start_time_in_ms': audioAssetStartTimeInMs,
        'audio_filter_infos': audioFilterInfos,
        'audio_muting_info': audioMutingInfo?.toJson(),
        'contains_lyrics': containsLyrics,
        'derived_content_id': derivedContentId,
        'display_labels': displayLabels,
        'formatted_clips_media_count': formattedClipsMediaCount,
        'ig_artist': igArtist?.toJson(),
        'is_bookmarked': isBookmarked,
        'is_trending_in_clips': isTrendingInClips,
        'music_creation_restriction_reason': musicCreationRestrictionReason,
        'overlap_duration_in_ms': overlapDurationInMs,
        'placeholder_profile_pic_url': placeholderProfilePicUrl,
        'previous_trend_rank': previousTrendRank,
        'should_allow_music_editing': shouldAllowMusicEditing,
        'should_mute_audio': shouldMuteAudio,
        'should_mute_audio_reason': shouldMuteAudioReason,
        'should_mute_audio_reason_type': shouldMuteAudioReasonType,
        'trend_rank': trendRank,
        'user_notes': userNotes,
      };

  @override
  List<Object?> get props {
    return [
      allowMediaCreationWithMusic,
      audioAssetStartTimeInMs,
      audioFilterInfos,
      audioMutingInfo,
      containsLyrics,
      derivedContentId,
      displayLabels,
      formattedClipsMediaCount,
      igArtist,
      isBookmarked,
      isTrendingInClips,
      musicCreationRestrictionReason,
      overlapDurationInMs,
      placeholderProfilePicUrl,
      previousTrendRank,
      shouldAllowMusicEditing,
      shouldMuteAudio,
      shouldMuteAudioReason,
      shouldMuteAudioReasonType,
      trendRank,
      userNotes,
    ];
  }
}
