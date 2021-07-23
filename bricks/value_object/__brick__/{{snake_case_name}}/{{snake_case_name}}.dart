import 'package:flutter_clean_domain/flutter_clean_domain.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';


import 'invalid_{{snake_case_name}}_failure.dart';
import '{{snake_case_name}}_validator.dart';

/// TODO: Class description
class {{class_name}} extends ValueObject<{{{type}}}> {
  final Either<Invalid{{class_name}}Failure, {{{type}}}> _value;

  @override
  Either<Invalid{{class_name}}Failure, {{{type}}}> get value => _value;

  /// Creates a [{{class_name}}] object from an [Either].
  ///
  /// Intended to be use for sub-classes only.
  @protected
  const {{class_name}}.fromEither(Either<Invalid{{class_name}}Failure, {{{type}}}> value)
      : _value = value;

  /// Constructs an [{{class_name}}] object.
  factory {{class_name}}({{{type}}} value) {
    return {{class_name}}.fromEither(validate{{class_name}}(value));
  }
}
