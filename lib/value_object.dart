import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'errors/unexpected_value_error.dart';
import 'value_failure.dart';

/// A generic Value Object.
abstract class ValueObject<T extends Object> extends Equatable {
  /// Default const constructor.
  ///
  /// Its only purpose is to let subclasses to have const constructors.
  @protected
  const ValueObject();

  /// Tha actual value of the object.
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure].
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  ///
  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold(
      (failure) => left(failure),
      (_) => right(unit),
    );
  }

  /// Tells whether the object is valid or not
  bool isValid() => value.isRight();

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
