import 'package:equatable/equatable.dart';

import 'data.dart';

class UserInfoModel extends Equatable {
	final Data? data;

	const UserInfoModel({this.data});

	factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
				data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'data': data?.toJson(),
			};

	@override
	List<Object?> get props => [data];
}
