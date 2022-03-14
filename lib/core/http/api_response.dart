import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_exceptions.dart';
part 'api_response.freezed.dart';

@freezed
class APIResponse<T> with _$APIResponse<T> {
  const factory APIResponse.loading(String message) = APILoading;
  const factory APIResponse.success(T value) = APISuccess<T>;
  const factory APIResponse.error(HttpException exception) = APIError;
}
