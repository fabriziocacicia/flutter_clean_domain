import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'value_failure.dart';

/// Base class for the Entity objects.
abstract class Entity extends Equatable {
  // ignore: public_member_api_docs
  @protected
  const Entity();

  /// Gives a Failure if one of the component of the entity is invalid.
  Option<ValueFailure> get failureOption;

  @override
  bool get stringify => true;
}
