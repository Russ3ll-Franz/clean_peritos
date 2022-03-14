import 'package:app_peritos/features/authentication/data/dtos/user_dto/user_dto.dart';
import 'package:app_peritos/features/authentication/domain/entities/auth.dart';
import 'package:app_peritos/features/authentication/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_dto.g.dart';

@JsonSerializable()
class AuthDto {
  final bool status;
  final String message;
  final UserDto user;

  const AuthDto(
      {required this.status, required this.message, required this.user});

  @override
  String toString() {
    return 'AuthDto(status: $status, message: $message, user: $user)';
  }

  factory AuthDto.fromJson(Map<String, dynamic> json) {
    return _$AuthDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthDtoToJson(this);

  AuthDto copyWith({
    bool? status,
    String? message,
    UserDto? user,
  }) {
    return AuthDto(
      status: status ?? this.status,
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }

  Auth toEntity() {
    return Auth(
      user: User(id: user.id, fullName: user.fullName),
      message: message,
      status: status,
    );
  }
}
