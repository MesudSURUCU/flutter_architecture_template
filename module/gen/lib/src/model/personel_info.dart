import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:gen/src/model/address.dart';
import 'package:gen/src/model/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'personel_info.g.dart';

@JsonSerializable()
@immutable

/// PersonelInfo model class
final class PersonelInfo with EquatableMixin {
  /// Constructor for PersonelInfo
  const PersonelInfo({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  /// Creates a PersonelInfo from a JSON map.
  factory PersonelInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PersonelInfoFromJson(
        json,
      );

  /// ID of the personel
  final int? id;

  /// Name of the personel
  final String? name;

  /// Username of the personel
  final String? username;

  /// Email of the personel
  final String? email;

  /// Address of the personel
  final Address? address;

  /// Phone number of the personel
  final String? phone;

  /// Website of the personel
  final String? website;

  /// Company of the personel
  final Company? company;

  /// Converts the PersonelInfo to a JSON map.
  Map<String, dynamic> toJson() => _$PersonelInfoToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        address,
        phone,
        website,
        company,
      ];

  /// Creates a copy of the PersonelInfo with
  /// the given fields replaced by new values
  PersonelInfo copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    return PersonelInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }
}
