import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}


class InvalidCounterFailure extends Failure{
  @override
  List<Object?> get props => [];
}