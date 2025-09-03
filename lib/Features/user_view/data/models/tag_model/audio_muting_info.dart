import 'package:equatable/equatable.dart';

class AudioMutingInfo extends Equatable {
  final bool? allowAudioEditing;
  final bool? muteAudio;
  final String? muteReasonStr;
  final bool? showMutedAudioToast;

  const AudioMutingInfo({
    this.allowAudioEditing,
    this.muteAudio,
    this.muteReasonStr,
    this.showMutedAudioToast,
  });

  factory AudioMutingInfo.fromJson(Map<String, dynamic> json) {
    return AudioMutingInfo(
      allowAudioEditing: json['allow_audio_editing'] as bool?,
      muteAudio: json['mute_audio'] as bool?,
      muteReasonStr: json['mute_reason_str'] as String?,
      showMutedAudioToast: json['show_muted_audio_toast'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
        'allow_audio_editing': allowAudioEditing,
        'mute_audio': muteAudio,
        'mute_reason_str': muteReasonStr,
        'show_muted_audio_toast': showMutedAudioToast,
      };

  @override
  List<Object?> get props {
    return [
      allowAudioEditing,
      muteAudio,
      muteReasonStr,
      showMutedAudioToast,
    ];
  }
}
