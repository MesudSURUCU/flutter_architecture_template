import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
@immutable
final class Company with EquatableMixin {
  const Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  List<Object?> get props => [name, catchPhrase, bs];

  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }
}
