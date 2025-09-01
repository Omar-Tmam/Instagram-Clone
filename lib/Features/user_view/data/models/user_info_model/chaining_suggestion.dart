import 'package:equatable/equatable.dart';

import 'chaining_info.dart';

class ChainingSuggestion extends Equatable {
	final ChainingInfo? chainingInfo;
	final String? fullName;
	final String? id;
	final bool? isPrivate;
	final bool? isVerified;
	final String? profileChainingSecondaryLabel;
	final String? profilePicId;
	final String? profilePicUrl;
	final String? socialContext;
	final String? username;

	const ChainingSuggestion({
		this.chainingInfo, 
		this.fullName, 
		this.id, 
		this.isPrivate, 
		this.isVerified, 
		this.profileChainingSecondaryLabel, 
		this.profilePicId, 
		this.profilePicUrl, 
		this.socialContext, 
		this.username, 
	});

	factory ChainingSuggestion.fromJson(Map<String, dynamic> json) {
		return ChainingSuggestion(
			chainingInfo: json['chaining_info'] == null
						? null
						: ChainingInfo.fromJson(json['chaining_info'] as Map<String, dynamic>),
			fullName: json['full_name'] as String?,
			id: json['id'] as String?,
			isPrivate: json['is_private'] as bool?,
			isVerified: json['is_verified'] as bool?,
			profileChainingSecondaryLabel: json['profile_chaining_secondary_label'] as String?,
			profilePicId: json['profile_pic_id'] as String?,
			profilePicUrl: json['profile_pic_url'] as String?,
			socialContext: json['social_context'] as String?,
			username: json['username'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'chaining_info': chainingInfo?.toJson(),
				'full_name': fullName,
				'id': id,
				'is_private': isPrivate,
				'is_verified': isVerified,
				'profile_chaining_secondary_label': profileChainingSecondaryLabel,
				'profile_pic_id': profilePicId,
				'profile_pic_url': profilePicUrl,
				'social_context': socialContext,
				'username': username,
			};

	@override
	List<Object?> get props {
		return [
				chainingInfo,
				fullName,
				id,
				isPrivate,
				isVerified,
				profileChainingSecondaryLabel,
				profilePicId,
				profilePicUrl,
				socialContext,
				username,
		];
	}
}
