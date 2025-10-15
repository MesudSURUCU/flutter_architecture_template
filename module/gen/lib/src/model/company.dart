import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
@immutable

/// Company model class
final class Company with EquatableMixin {
  /// Constructor for Company
  const Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  /// Creates a Company from a JSON map.
  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(
        json,
      );

  /// Name of the company
  final String? name;

  /// Catch phrase of the company
  final String? catchPhrase;

  /// Business slogan of the company
  final String? bs;

  /// Converts the Company to a JSON map.
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  List<Object?> get props => [name, catchPhrase, bs];

  /// Creates a copy of the Company with the given fields replaced by new values
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
