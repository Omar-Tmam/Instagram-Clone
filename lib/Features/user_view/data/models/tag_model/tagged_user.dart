import 'package:equatable/equatable.dart';

import 'user.dart';

class TaggedUser extends Equatable {
  final User? user;
  final double? x;
  final double? y;

  const TaggedUser({this.user, this.x, this.y});

  factory TaggedUser.fromJson(Map<String, dynamic> json) => TaggedUser(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        x: (json['x'] as num?)?.toDouble(),
        y: (json['y'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
        'x': x,
        'y': y,
      };

  @override
  List<Object?> get props => [user, x, y];
}
