abstract class Failure {}

class ServerFailure implements Failure {
  final String message;
  ServerFailure(this.message);
}

class ServerException implements Exception {}
