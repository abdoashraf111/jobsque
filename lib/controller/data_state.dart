part of 'data_cubit.dart';

@immutable
abstract class DataState {}

class DataInitial extends DataState {}
class DataLoading extends DataState {}
class DataJobSuccess extends DataState {}
class DataJobFailure extends DataState {}
