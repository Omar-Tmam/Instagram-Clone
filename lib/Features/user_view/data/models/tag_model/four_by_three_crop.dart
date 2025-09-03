import 'package:equatable/equatable.dart';

class FourByThreeCrop extends Equatable {
  final double? cropBottom;
  final int? cropLeft;
  final int? cropRight;
  final double? cropTop;

  const FourByThreeCrop({
    this.cropBottom,
    this.cropLeft,
    this.cropRight,
    this.cropTop,
  });

  factory FourByThreeCrop.fromJson(Map<String, dynamic> json) {
    return FourByThreeCrop(
      cropBottom: (json['crop_bottom'] as num?)?.toDouble(),
      cropLeft: json['crop_left'] as int?,
      cropRight: json['crop_right'] as int?,
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
