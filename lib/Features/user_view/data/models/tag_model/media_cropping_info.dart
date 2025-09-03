import 'package:equatable/equatable.dart';

import 'four_by_three_crop.dart';

class MediaCroppingInfo extends Equatable {
  final FourByThreeCrop? fourByThreeCrop;

  const MediaCroppingInfo({this.fourByThreeCrop});

  factory MediaCroppingInfo.fromJson(Map<String, dynamic> json) {
    return MediaCroppingInfo(
      fourByThreeCrop: json['four_by_three_crop'] == null
          ? null
          : FourByThreeCrop.fromJson(
              json['four_by_three_crop'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'four_by_three_crop': fourByThreeCrop?.toJson(),
      };

  @override
  List<Object?> get props => [fourByThreeCrop];
}
