import 'package:equatable/equatable.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object?> get props => [];

  String messageText() {
    if (this is ServerFailure) {
      return (this as ServerFailure).message ?? '';
    } else {
      return kUnexpectedError;
    }
  }

  String documentationUrlText() {
    if (this is ServerFailure) {
      return (this as ServerFailure).documentationUrl ?? '';
    } else {
      return kUnexpectedError;
    }
  }
}

@Freezed()
class ServerFailure extends Failure with _$ServerFailure {
  const ServerFailure._();

  const factory ServerFailure({
    String? message,
    String? documentationUrl,
    List<ServerError>? errors,
  }) = _ServerFailure;

  factory ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$ServerFailureFromJson(json);

  static unknown() => const ServerFailure(
        message: kUnknownServerError,
      );
}

@Freezed()
class ServerError with _$ServerError {
  const ServerError._();

  const factory ServerError({
    String? code,
    String? message,
    String? field,
    String? resource,
  }) = _ServerError;

  factory ServerError.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);
}

// Object to ServerFailure conversion functions
extension ServerFailureExt on Object? {
  ServerFailure toServerFailure() {
    if (this is Map<String, dynamic>) {
      return ServerFailure.fromJson(this as Map<String, dynamic>);
    } else {
      return ServerFailure.unknown();
    }
  }
}
