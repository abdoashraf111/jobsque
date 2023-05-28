import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'custom_job_state.dart';

class CustomJobCubit extends Cubit<CustomJobState> {
  CustomJobCubit() : super(CustomJobInitial());
}
