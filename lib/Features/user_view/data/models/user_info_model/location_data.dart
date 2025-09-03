import 'package:equatable/equatable.dart';

class LocationData extends Equatable {
  final dynamic addressStreet;
  final dynamic cityId;
  final dynamic cityName;
  final dynamic instagramLocationId;
  final dynamic latitude;
  final dynamic longitude;
  final dynamic zip;

  const LocationData({
    this.addressStreet,
    this.cityId,
    this.cityName,
    this.instagramLocationId,
    this.latitude,
    this.longitude,
    this.zip,
  });

  factory LocationData.fromJson(Map<String, dynamic> json) => LocationData(
        addressStreet: json['address_street'] as dynamic,
        cityId: json['city_id'] as dynamic,
        cityName: json['city_name'] as dynamic,
        instagramLocationId: json['instagram_location_id'] as dynamic,
        latitude: json['latitude'] as dynamic,
        longitude: json['longitude'] as dynamic,
        zip: json['zip'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'address_street': addressStreet,
        'city_id': cityId,
        'city_name': cityName,
        'instagram_location_id': instagramLocationId,
        'latitude': latitude,
        'longitude': longitude,
        'zip': zip,
      };

  @override
  List<Object?> get props {
    return [
      addressStreet,
      cityId,
      cityName,
      instagramLocationId,
      latitude,
      longitude,
      zip,
    ];
  }
}
