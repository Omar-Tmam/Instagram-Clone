import 'package:equatable/equatable.dart';

import 'item.dart';

class Data extends Equatable {
  final int? count;
  final List<Item>? items;
  final int? total;

  const Data({this.count, this.items, this.total});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json['count'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'items': items?.map((e) => e.toJson()).toList(),
        'total': total,
      };

  @override
  List<Object?> get props => [count, items, total];
}
