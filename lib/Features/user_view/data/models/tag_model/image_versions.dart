import 'package:equatable/equatable.dart';

import 'item.dart';

class ImageVersions extends Equatable {
  final List<Item>? items;

  const ImageVersions({this.items});

  factory ImageVersions.fromJson(Map<String, dynamic> json) => ImageVersions(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [items];
}
