import 'package:equatable/equatable.dart';

import 'media.dart';

class LinkedMediaData extends Equatable {
  final String? linkName;
  final Media? media;

  const LinkedMediaData({this.linkName, this.media});

  factory LinkedMediaData.fromJson(Map<String, dynamic> json) {
    return LinkedMediaData(
      linkName: json['link_name'] as String?,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'link_name': linkName,
        'media': media?.toJson(),
      };

  @override
  List<Object?> get props => [linkName, media];
}
