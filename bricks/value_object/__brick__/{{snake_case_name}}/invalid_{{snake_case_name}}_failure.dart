import 'package:flutter_clean_domain/flutter_clean_domain.dart';

/// Represents a failure due to an invalid {{class_name}}.
class Invalid{{class_name}}Failure extends ValueFailure<{{{type}}}> {
  /// Creates an [Invalid{{class_name}}Failure].
  const Invalid{{class_name}}Failure({required {{{type}}} invalidValue})
      : super(invalidValue: invalidValue);
}
