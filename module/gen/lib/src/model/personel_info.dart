import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:gen/src/model/address.dart';
import 'package:gen/src/model/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'personel_info.g.dart';

@JsonSerializable()
@immutable
final class PersonelInfo with EquatableMixin {
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

  factory PersonelInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonelInfoFromJson(json);
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;

  Map<String, dynamic> toJson() => _$PersonelInfoToJson(this);

  @override
  List<Object?> get props =>
      [id, name, username, email, address, phone, website, company];

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
