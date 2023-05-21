import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../helper/api_showjobs.dart';
part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());
  ApiShowJobs Api = ApiShowJobs();
  api() async {
    emit(HomeScreenLoading());
    Api.get();
    emit(HomeScreenSuccess());
  }
}
