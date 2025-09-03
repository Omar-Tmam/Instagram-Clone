import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? address;
  final String? category;
  final String? city;
  final String? externalId;
  final String? externalIdSource;

  final String? id;
  final double? lat;
  final double? lng;
  final String? name;
  final String? phone;
  final String? website;
  final dynamic zip;

  const Location({
    this.address,
    this.category,
    this.city,
    this.externalId,
    this.externalIdSource,
    this.id,
    this.lat,
    this.lng,
    this.name,
    this.phone,
    this.website,
    this.zip,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: json['address'] as String?,
        category: json['category'] as String?,
        city: json['city'] as String?,
        externalId: json['external_id'] as String?,
        externalIdSource: json['external_id_source'] as String?,
        id: json['id'] as String?,
        lat: (json['lat'] as num?)?.toDouble(),
        lng: (json['lng'] as num?)?.toDouble(),
        name: json['name'] as String?,
        phone: json['phone'] as String?,
        website: json['website'] as String?,
        zip: json['zip'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'address': address,
        'category': category,
        'city': city,
        'external_id': externalId,
        'external_id_source': externalIdSource,
        'id': id,
        'lat': lat,
        'lng': lng,
        'name': name,
        'phone': phone,
        'website': website,
        'zip': zip,
      };

  @override
  List<Object?> get props {
    return [
      address,
      category,
      city,
      externalId,
      externalIdSource,
      id,
      lat,
      lng,
      name,
      phone,
      website,
      zip,
    ];
  }
}
