import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String fullName;

  const User({required this.id, required this.fullName});

  @override
  List<Object?> get props => [id, fullName];
}
