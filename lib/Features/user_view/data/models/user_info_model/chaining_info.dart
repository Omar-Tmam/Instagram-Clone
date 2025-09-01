import 'package:equatable/equatable.dart';

class ChainingInfo extends Equatable {
	final dynamic algorithm;
	final String? sources;

	const ChainingInfo({this.algorithm, this.sources});

	factory ChainingInfo.fromJson(Map<String, dynamic> json) => ChainingInfo(
				algorithm: json['algorithm'] as dynamic,
				sources: json['sources'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'algorithm': algorithm,
				'sources': sources,
			};

	@override
	List<Object?> get props => [algorithm, sources];
}
