import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// The base class for a failure.
abstract class Failure extends Equatable {
  // ignore: public_member_api_docs
  @protected
  const Failure({this.message = ""});

  /// The message that describes the failure.
  final String? message;

  @override
  bool get stringify => true;
}
