import 'package:equatable/equatable.dart';

import 'user.dart';

class Auth extends Equatable {
  final bool? status;
  final String? message;
  final User? user;

  const Auth({this.status, this.message, this.user});

  @override
  List<Object?> get props => [status, message, user];
}
