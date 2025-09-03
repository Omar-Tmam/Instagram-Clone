import 'package:equatable/equatable.dart';

import 'music_asset_info.dart';
import 'music_consumption_info.dart';

class MusicInfo extends Equatable {
  final MusicAssetInfo? musicAssetInfo;
  final MusicConsumptionInfo? musicConsumptionInfo;

  const MusicInfo({this.musicAssetInfo, this.musicConsumptionInfo});

  factory MusicInfo.fromJson(Map<String, dynamic> json) => MusicInfo(
        musicAssetInfo: json['music_asset_info'] == null
            ? null
            : MusicAssetInfo.fromJson(
                json['music_asset_info'] as Map<String, dynamic>),
        musicConsumptionInfo: json['music_consumption_info'] == null
            ? null
            : MusicConsumptionInfo.fromJson(
                json['music_consumption_info'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'music_asset_info': musicAssetInfo?.toJson(),
        'music_consumption_info': musicConsumptionInfo?.toJson(),
      };

  @override
  List<Object?> get props => [musicAssetInfo, musicConsumptionInfo];
}
