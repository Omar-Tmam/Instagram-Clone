import 'package:equatable/equatable.dart';

import 'creation_tool_info.dart';

class CreativeConfig extends Equatable {
  final dynamic attributionUser;
  final String? captureType;
  final List<CreationToolInfo>? creationToolInfo;
  final dynamic effectConfigs;
  final dynamic effectPreview;
  final dynamic faceEffectId;
  final dynamic genAiToolInfo;

  const CreativeConfig({
    this.attributionUser,
    this.captureType,
    this.creationToolInfo,
    this.effectConfigs,
    this.effectPreview,
    this.faceEffectId,
    this.genAiToolInfo,
  });

  factory CreativeConfig.fromJson(Map<String, dynamic> json) {
    return CreativeConfig(
      attributionUser: json['attribution_user'] as dynamic,
      captureType: json['capture_type'] as String?,
      creationToolInfo: (json['creation_tool_info'] as List<dynamic>?)
          ?.map((e) => CreationToolInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      effectConfigs: json['effect_configs'] as dynamic,
      effectPreview: json['effect_preview'] as dynamic,
      faceEffectId: json['face_effect_id'] as dynamic,
      genAiToolInfo: json['gen_ai_tool_info'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'attribution_user': attributionUser,
        'capture_type': captureType,
        'creation_tool_info': creationToolInfo?.map((e) => e.toJson()).toList(),
        'effect_configs': effectConfigs,
        'effect_preview': effectPreview,
        'face_effect_id': faceEffectId,
        'gen_ai_tool_info': genAiToolInfo,
      };

  @override
  List<Object?> get props {
    return [
      attributionUser,
      captureType,
      creationToolInfo,
      effectConfigs,
      effectPreview,
      faceEffectId,
      genAiToolInfo,
    ];
  }
}
