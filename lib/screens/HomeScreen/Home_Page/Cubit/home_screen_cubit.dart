import 'package:bloc/bloc.dart';
import 'package:jobsque/helper/api.dart';
import 'package:meta/meta.dart';
import '../../../../helper/api_showjobs.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());
  ApiShowJobs Api=ApiShowJobs();
   api()async{
     emit(HomeScreenLoading());
     try {
       Api.get();
       emit(HomeScreenSuccess());
     }  catch (error) {
       emit(HomeScreenFailure());
     }
  }
}
