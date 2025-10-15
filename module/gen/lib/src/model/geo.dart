import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
@immutable

/// Geo model class
final class Geo with EquatableMixin {
  /// Constructor for Geo
  const Geo({
    this.lat,
    this.lng,
  });

  /// Creates a Geo from a JSON map.
  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  /// Latitude of the geo location
  final String? lat;

  /// Longitude of the geo location
  final String? lng;

  /// Converts the Geo to a JSON map.
  Map<String, dynamic> toJson() => _$GeoToJson(this);

  @override
  List<Object?> get props => [lat, lng];

  /// Creates a copy of the Geo with the given fields replaced by new values
  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}
