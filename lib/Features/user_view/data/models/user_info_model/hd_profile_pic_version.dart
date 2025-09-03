import 'package:equatable/equatable.dart';

class HdProfilePicVersion extends Equatable {
  final int? height;
  final String? url;
  final int? width;

  const HdProfilePicVersion({this.height, this.url, this.width});

  factory HdProfilePicVersion.fromJson(Map<String, dynamic> json) {
    return HdProfilePicVersion(
      height: json['height'] as int?,
      url: json['url'] as String?,
      width: json['width'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'height': height,
        'url': url,
        'width': width,
      };

  @override
  List<Object?> get props => [height, url, width];
}
