import '../value_failure.dart';

/// Represents an unexpected error coming from a [ValueObject].
class UnexpectedValueError extends Error {
  /// The failure that caused the error.
  final ValueFailure valueFailure;

  /// Construct an [UnexpectedValueError] object.
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
