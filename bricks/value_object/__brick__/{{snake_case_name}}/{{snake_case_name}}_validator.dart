import 'package:dartz/dartz.dart';

import 'invalid_{{snake_case_name}}_failure.dart';

/// Validates [{{class_name}}]s.
Either<Invalid{{class_name}}Failure, {{{type}}}> validate{{class_name}}(final {{{type}}} value) {
  if () {
    return Left(Invalid{{class_name}}Failure(invalidValue: value));
  } else {
    return Right(value);
  }
}
