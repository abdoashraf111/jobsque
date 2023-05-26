part of 'data_cubit.dart';

@immutable
abstract class DataState {}

class DataInitial extends DataState {}
class DataSignLoading extends DataState {}
class DataSignSuccess extends DataState {}
class DataSignFailure extends DataState {}
class DataJobLoading extends DataState {}
class DataJobSuccess extends DataState {}
class DataJobFailure extends DataState {}
