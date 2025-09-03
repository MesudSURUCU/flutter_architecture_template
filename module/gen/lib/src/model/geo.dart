import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
@immutable
final class Geo with EquatableMixin {
  const Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  final String? lat;
  final String? lng;

  Map<String, dynamic> toJson() => _$GeoToJson(this);

  @override
  List<Object?> get props => [lat, lng];

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
