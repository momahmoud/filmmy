import 'package:tawasel/core/network/network_error_model.dart';

class ServerException implements Exception {
  final NetworkErrorModel networkErrorModel;

  const ServerException({required this.networkErrorModel});
}

class LocalDataException implements Exception {
  final String message;

  const LocalDataException(this.message);
}
