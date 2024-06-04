class BadRequestException implements Exception {
  final String message;
  BadRequestException(this.message);

  @override
  String toString() {
    return 'BadRequest: $message';
  }
}

class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);

  @override
  String toString() {
    return 'NotFound: $message';
  }
}

class UnknownException implements Exception {
  final String message;
  UnknownException(this.message);

  @override
  String toString() {
    return message;
  }
}
