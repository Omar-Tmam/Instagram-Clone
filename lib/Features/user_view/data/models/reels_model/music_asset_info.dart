import 'package:equatable/equatable.dart';

class MusicAssetInfo extends Equatable {
  final bool? allowsSaving;
  final String? artistId;
  final String? audioId;
  final String? coverArtworkThumbnailUri;
  final String? coverArtworkUri;
  final dynamic darkMessage;
  final String? displayArtist;
  final int? durationInMs;
  final String? fastStartProgressiveDownloadUrl;
  final bool? hasLyrics;
  final List<int>? highlightStartTimesInMs;
  final String? id;
  final String? igUsername;
  final bool? isEligibleForAudioEffects;
  final bool? isEligibleForVinylSticker;
  final bool? isExplicit;
  final String? licensedMusicSubtype;
  final dynamic lyrics;
  final String? progressiveDownloadUrl;
  final dynamic reactiveAudioDownloadUrl;
  final dynamic sanitizedTitle;
  final dynamic songMonetizationInfo;
  final dynamic spotifyTrackMetadata;
  final String? subtitle;
  final String? title;
  final dynamic web30sPreviewDownloadUrl;

  const MusicAssetInfo({
    this.allowsSaving,
    this.artistId,
    this.audioId,
    this.coverArtworkThumbnailUri,
    this.coverArtworkUri,
    this.darkMessage,
    this.displayArtist,
    this.durationInMs,
    this.fastStartProgressiveDownloadUrl,
    this.hasLyrics,
    this.highlightStartTimesInMs,
    this.id,
    this.igUsername,
    this.isEligibleForAudioEffects,
    this.isEligibleForVinylSticker,
    this.isExplicit,
    this.licensedMusicSubtype,
    this.lyrics,
    this.progressiveDownloadUrl,
    this.reactiveAudioDownloadUrl,
    this.sanitizedTitle,
    this.songMonetizationInfo,
    this.spotifyTrackMetadata,
    this.subtitle,
    this.title,
    this.web30sPreviewDownloadUrl,
  });

  factory MusicAssetInfo.fromJson(Map<String, dynamic> json) {
    return MusicAssetInfo(
      allowsSaving: json['allows_saving'] as bool?,
      artistId: json['artist_id'] as String?,
      audioId: json['audio_id'] as String?,
      coverArtworkThumbnailUri: json['cover_artwork_thumbnail_uri'] as String?,
      coverArtworkUri: json['cover_artwork_uri'] as String?,
      darkMessage: json['dark_message'] as dynamic,
      displayArtist: json['display_artist'] as String?,
      durationInMs: json['duration_in_ms'] as int?,
      fastStartProgressiveDownloadUrl:
          json['fast_start_progressive_download_url'] as String?,
      hasLyrics: json['has_lyrics'] as bool?,
      highlightStartTimesInMs:
          json['highlight_start_times_in_ms'] as List<int>?,
      id: json['id'] as String?,
      igUsername: json['ig_username'] as String?,
      isEligibleForAudioEffects: json['is_eligible_for_audio_effects'] as bool?,
      isEligibleForVinylSticker: json['is_eligible_for_vinyl_sticker'] as bool?,
      isExplicit: json['is_explicit'] as bool?,
      licensedMusicSubtype: json['licensed_music_subtype'] as String?,
      lyrics: json['lyrics'] as dynamic,
      progressiveDownloadUrl: json['progressive_download_url'] as String?,
      reactiveAudioDownloadUrl: json['reactive_audio_download_url'] as dynamic,
      sanitizedTitle: json['sanitized_title'] as dynamic,
      songMonetizationInfo: json['song_monetization_info'] as dynamic,
      spotifyTrackMetadata: json['spotify_track_metadata'] as dynamic,
      subtitle: json['subtitle'] as String?,
      title: json['title'] as String?,
      web30sPreviewDownloadUrl: json['web_30s_preview_download_url'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'allows_saving': allowsSaving,
        'artist_id': artistId,
        'audio_id': audioId,
        'cover_artwork_thumbnail_uri': coverArtworkThumbnailUri,
        'cover_artwork_uri': coverArtworkUri,
        'dark_message': darkMessage,
        'display_artist': displayArtist,
        'duration_in_ms': durationInMs,
        'fast_start_progressive_download_url': fastStartProgressiveDownloadUrl,
        'has_lyrics': hasLyrics,
        'highlight_start_times_in_ms': highlightStartTimesInMs,
        'id': id,
        'ig_username': igUsername,
        'is_eligible_for_audio_effects': isEligibleForAudioEffects,
        'is_eligible_for_vinyl_sticker': isEligibleForVinylSticker,
        'is_explicit': isExplicit,
        'licensed_music_subtype': licensedMusicSubtype,
        'lyrics': lyrics,
        'progressive_download_url': progressiveDownloadUrl,
        'reactive_audio_download_url': reactiveAudioDownloadUrl,
        'sanitized_title': sanitizedTitle,
        'song_monetization_info': songMonetizationInfo,
        'spotify_track_metadata': spotifyTrackMetadata,
        'subtitle': subtitle,
        'title': title,
        'web_30s_preview_download_url': web30sPreviewDownloadUrl,
      };

  @override
  List<Object?> get props {
    return [
      allowsSaving,
      artistId,
      audioId,
      coverArtworkThumbnailUri,
      coverArtworkUri,
      darkMessage,
      displayArtist,
      durationInMs,
      fastStartProgressiveDownloadUrl,
      hasLyrics,
      highlightStartTimesInMs,
      id,
      igUsername,
      isEligibleForAudioEffects,
      isEligibleForVinylSticker,
      isExplicit,
      licensedMusicSubtype,
      lyrics,
      progressiveDownloadUrl,
      reactiveAudioDownloadUrl,
      sanitizedTitle,
      songMonetizationInfo,
      spotifyTrackMetadata,
      subtitle,
      title,
      web30sPreviewDownloadUrl,
    ];
  }
}
