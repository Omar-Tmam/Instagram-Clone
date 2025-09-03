import 'package:equatable/equatable.dart';

class CreationToolInfo extends Equatable {
  final int? appearanceEffect;
  final int? cameraTool;
  final String? colorFilters;
  final int? durationSelectorSeconds;
  final int? magicCutEndTime;
  final int? magicCutStartTime;
  final int? speedSelector;
  final int? timerSelectorSeconds;

  const CreationToolInfo({
    this.appearanceEffect,
    this.cameraTool,
    this.colorFilters,
    this.durationSelectorSeconds,
    this.magicCutEndTime,
    this.magicCutStartTime,
    this.speedSelector,
    this.timerSelectorSeconds,
  });

  factory CreationToolInfo.fromJson(Map<String, dynamic> json) {
    return CreationToolInfo(
      appearanceEffect: json['appearance_effect'] as int?,
      cameraTool: json['camera_tool'] as int?,
      colorFilters: json['color_filters'] as String?,
      durationSelectorSeconds: json['duration_selector_seconds'] as int?,
      magicCutEndTime: json['magic_cut_end_time'] as int?,
      magicCutStartTime: json['magic_cut_start_time'] as int?,
      speedSelector: json['speed_selector'] as int?,
      timerSelectorSeconds: json['timer_selector_seconds'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'appearance_effect': appearanceEffect,
        'camera_tool': cameraTool,
        'color_filters': colorFilters,
        'duration_selector_seconds': durationSelectorSeconds,
        'magic_cut_end_time': magicCutEndTime,
        'magic_cut_start_time': magicCutStartTime,
        'speed_selector': speedSelector,
        'timer_selector_seconds': timerSelectorSeconds,
      };

  @override
  List<Object?> get props {
    return [
      appearanceEffect,
      cameraTool,
      colorFilters,
      durationSelectorSeconds,
      magicCutEndTime,
      magicCutStartTime,
      speedSelector,
      timerSelectorSeconds,
    ];
  }
}
