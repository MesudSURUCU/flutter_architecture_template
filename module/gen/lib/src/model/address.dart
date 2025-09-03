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

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];

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
