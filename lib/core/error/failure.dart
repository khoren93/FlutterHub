import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../configs/constants.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object?> get props => [];

  String messageText() {
    switch (runtimeType) {
      case _$_ServerFailure:
        return (this as ServerFailure).message ?? '';
      default:
        return kUnexpectedError;
    }
  }

  String documentationUrlText() {
    switch (runtimeType) {
      case _$_ServerFailure:
        return (this as ServerFailure).documentationUrl ?? '';
      default:
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
