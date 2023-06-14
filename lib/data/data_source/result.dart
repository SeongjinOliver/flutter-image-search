import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.sucess(T data) = Success;
  const factory Result.error(String message) = Error;
}

// 위와 같이 작성 후 flutter pub run build_runner build <-- 터미널에서 실행

// abstract class Result<T> {
//   factory Result.sucess(T data) = Success;
//   factory Result.error(String message) = Error;
// }
//
// class Success<T> implements Result<T> {
//   final T data;
//
//   Success(this.data);
// }
//
// class Error<T> implements Result<T> {
//   final String message;
//
//   Error(this.message);
// }