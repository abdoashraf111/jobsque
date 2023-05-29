import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'custom_job_state.dart';

class CustomJobCubit extends Cubit<CustomJobState> {
  CustomJobCubit() : super(CustomJobInitial());
  bool click = false;
  int like=0;
  fun() {
    emit(CustomJobChange());
    click = !click;
  }

  likeFunTrue() {
    like=1;
    emit(CustomJobLike());
  }
  likeFunFalse() {
    like=0;
    emit(CustomJobLike());
  }
}
