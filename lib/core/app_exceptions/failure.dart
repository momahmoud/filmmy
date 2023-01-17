import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMessage;

  const Failure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class RemoteDataFailure extends Failure {
  const RemoteDataFailure(super.errorMessage);
}

class LocalDataFailure extends Failure {
  const LocalDataFailure(super.errorMessage);
}
