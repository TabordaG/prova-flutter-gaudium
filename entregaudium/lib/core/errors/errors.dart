import 'failure.dart';

class ConnectionError extends Failure {
  @override
  final String message;
  ConnectionError({required this.message});
}

class InternalError implements Failure {
  @override
  final String message;
  InternalError({required this.message});
}
