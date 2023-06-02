import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  JobDetailsCubit() : super(JobDetailsInitial());
  int groupValue=0;
  groupchange(int value){
        groupValue=value;
        emit(JobDetailsGroupValue());}
  bool like=true;
likeAction({required modelFav,required modelJob,required index}){
  var job=modelJob.data![index];
  var id= modelJob.data![index].id;
  for(int i=0;i<modelFav.data!.length;i++){
    if(id==modelFav.data![i].jobId){like=true;}
    else{like=false;}
  }
  print("state is $like");
  emit(JobDetailsLike());
}

}
