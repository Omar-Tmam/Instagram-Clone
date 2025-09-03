import 'package:equatable/equatable.dart';

import 'data.dart';

class PostsModel extends Equatable {
  final Data? data;
  final String? paginationToken;

  const PostsModel({this.data, this.paginationToken});

  factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        paginationToken: json['pagination_token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'pagination_token': paginationToken,
      };

  @override
  List<Object?> get props => [data, paginationToken];
}
