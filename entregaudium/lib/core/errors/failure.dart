abstract class Failure implements Exception {
  String get message;
}

class FailureMessage {
  static const connectionErrorMessage = 'Sem conexão com a internet';
  static const internalErrorMessage =
      'Ocorreu um erro interno. Tente novamente mais tarde';
}
