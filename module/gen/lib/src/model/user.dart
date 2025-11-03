// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

@JsonSerializable()

/// Represents a user model with relevant fields.
class User extends INetworkModel<User> with EquatableMixin {
  User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  @override
  List<Object?> get props => [userId, id, title, body];
  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  User fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  User copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
