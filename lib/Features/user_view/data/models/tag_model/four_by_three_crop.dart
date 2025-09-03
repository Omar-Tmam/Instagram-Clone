import 'package:equatable/equatable.dart';

class FourByThreeCrop extends Equatable {
  final dynamic cropBottom;
  final dynamic cropLeft;
  final dynamic cropRight;
  final dynamic cropTop;

  const FourByThreeCrop({
    this.cropBottom,
    this.cropLeft,
    this.cropRight,
    this.cropTop,
  });

  factory FourByThreeCrop.fromJson(Map<String, dynamic> json) {
    return FourByThreeCrop(
      cropBottom: (json['crop_bottom'] as num?)?.toDouble(),
      cropLeft: json['crop_left'] ,
      cropRight: json['crop_right'],
      cropTop: (json['crop_top'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'crop_bottom': cropBottom,
        'crop_left': cropLeft,
        'crop_right': cropRight,
        'crop_top': cropTop,
      };

  @override
  List<Object?> get props => [cropBottom, cropLeft, cropRight, cropTop];
}
