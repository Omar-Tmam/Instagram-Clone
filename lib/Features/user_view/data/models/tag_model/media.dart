import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final String? id;

  const Media({this.id});

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json['id'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
      };

  @override
  List<Object?> get props => [id];
}
