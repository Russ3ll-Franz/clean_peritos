// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) => AuthDto(
      status: json['status'] as bool,
      message: json['message'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthDtoToJson(AuthDto instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user': instance.user,
    };
