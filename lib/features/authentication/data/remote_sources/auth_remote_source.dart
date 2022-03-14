import 'package:app_peritos/core/error/network_error.dart';
import 'package:app_peritos/core/network/dio_extension.dart';
import 'package:app_peritos/features/authentication/data/data.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

typedef AuthRemoteResponse = Either<NetworkException<void>, AuthDto>;

abstract class AuthRemoteSource {
  Future<AuthRemoteResponse> signIn(String username, String password);
}

@Injectable(as: AuthRemoteSource)
class AuthRemoteSourceImpl implements AuthRemoteSource {
  final Dio _dio;
  const AuthRemoteSourceImpl(this._dio);

  @override
  Future<AuthRemoteResponse> signIn(String username, String password) async {
    final params = {
      'username': username,
      'password': password,
    };

    try {
      final response = await _dio.get(
          'https://allemantperitos.com.pe/appsgi/usuario/logInApp',
          queryParameters: params);

      final result = response.data;
      final users = AuthDto.fromJson(result);

      return right(users);
    } on DioError catch (error) {
      return left(error.toNetWorkErrorOrThrow());
    }
  }
}

/* Future<void> logIn({
  required String username,
  required String password,
}) async {
  final params = {
    'username': username,
    'password': password,
  };
  final response = await _helper.post("usuario/logInApp", jsonEncode(params));

  print(response);

  response.when(loading: (loading) async {
    return const AuthenticationState.loading();
  }, success: (success) async {
    final userID = LoginResponse.fromJson(success);

    await userRepository.saveIdUser(userID.user!.id.toString());

    _controller.add(AuthenticationStatus.authenticated);
    print("LLEGO");
    print(userID);

    return AuthenticationStatus.authenticated;
  }, error: (error) async {
    return AuthenticationStatus.unknown;
  }); */
  /*   SharedPreferences preferences = await SharedPreferences.getInstance();
    final dataResponse = Useresponse.fromJson(response);
    preferences.setString("id", dataResponse.user.usuId); */

