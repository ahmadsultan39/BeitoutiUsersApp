class ImplementedError implements Exception {
  String error;

  ImplementedError({this.error = ''});
}

class ServerException extends ImplementedError implements Exception{

  ServerException({String error = ''}):super(error: error);
}


class NullDataException extends ImplementedError implements Exception  {

  NullDataException({String error = ''}):super(error: error);
}

class UnauthorizedException extends ImplementedError  implements Exception {

  UnauthorizedException({String error = ''}):super(error: error);
}

class UnprocessableEntityException extends ImplementedError  implements Exception {

  UnprocessableEntityException({String error = ''}):super(error: error);
}

class BadRequestException extends ImplementedError  implements Exception {

  BadRequestException({String error = ''}):super(error: error);
}

class ForbiddenException extends ImplementedError  implements Exception {

  ForbiddenException({String error = ''}):super(error: error);
}

class NotFoundException extends ImplementedError  implements Exception {

  NotFoundException({String error = ''}):super(error: error);
}

class InternalServerErrorException extends ImplementedError  implements Exception {

  InternalServerErrorException({String error = ''}):super(error: error);
}

class ServiceUnavailableException extends ImplementedError  implements Exception {

  ServiceUnavailableException({String error = ''}):super(error: error);
}

class CacheException implements Exception {
  String error;

  CacheException({this.error = ""});
}


class PickFileException implements Exception {}
