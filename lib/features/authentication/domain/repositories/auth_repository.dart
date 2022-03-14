import 'package:app_peritos/core/error/failures.dart';
import 'package:app_peritos/features/authentication/data/data.dart';
import 'package:app_peritos/features/authentication/domain/entities/entities.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/network_error.dart';

typedef AuthResponse = Either<NetworkException<void>, Auth>;

abstract class AuthRepository {
/*   Future<Either<Failure, List<Inspeccion>>> getTypeInspeccionByUser();
 */

  Future<AuthResponse> signIn(String username, String password);
  /*  Future<Either<Failure, User>> signUp();
  Future<Either<Failure, void>> signOut(); */
}
