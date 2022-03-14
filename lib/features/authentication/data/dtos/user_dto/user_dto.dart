import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final String id;
  @JsonKey(name: 'full_name')
  final String fullName;

  const UserDto({required this.id, required this.fullName});

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserDto copyWith({
    String? id,
    String? fullName,
  }) {
    return UserDto(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
    );
  }
}
