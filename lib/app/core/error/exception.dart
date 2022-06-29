class ServerException implements Exception {
  final String message;
  ServerException(this.message);
  List<Object> get props => [message];
}

class CacheException implements Exception {
  final String message;
  CacheException(this.message);
  List<Object> get props => [message];
}
