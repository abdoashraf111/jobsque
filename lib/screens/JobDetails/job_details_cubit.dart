import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  JobDetailsCubit() : super(JobDetailsInitial());
  int groupValue=0;
  groupchange(int value){
    if(value==0)
      {
        groupValue=0;
        emit(JobDetailsGroupValue());}
    else if (value==1){groupValue=1;
    emit(JobDetailsGroupValue());}
    else if (value==2){groupValue=2;
    emit(JobDetailsGroupValue());}
  }
}
