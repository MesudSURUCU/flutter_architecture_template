import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:gen/src/model/geo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
@immutable

/// Address model class
final class Address with EquatableMixin {
  /// Constructor for Address
  const Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  /// Creates an Address from a JSON map.
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(
        json,
      );

  /// Street of the address
  final String? street;

  /// Suite of the address
  final String? suite;

  /// City of the address
  final String? city;

  /// Zipcode of the address
  final String? zipcode;

  /// Geo location of the address
  final Geo? geo;

  /// Converts the Address to a JSON map.
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];

  /// Creates a copy of the Address with the given fields replaced by new values
  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) {
    return Address(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }
}
