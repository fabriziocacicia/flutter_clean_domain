import 'package:meta/meta.dart';

import 'failure.dart';

/// Represent a failure in instantiating a [ValueObject].
abstract class ValueFailure<T extends Object> extends Failure {
  // ignore: public_member_api_docs
  @protected
  const ValueFailure({required this.invalidValue, String? message})
      : super(message: message);

  /// The invalid value.
  final T invalidValue;

  @override
  List<Object> get props => [invalidValue];
}
