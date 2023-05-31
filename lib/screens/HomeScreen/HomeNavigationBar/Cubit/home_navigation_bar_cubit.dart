import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_navigation_bar_state.dart';

class HomeNavigationBarCubit extends Cubit<HomeNavigationBarState> {
  HomeNavigationBarCubit() : super(HomeNavigationBarInitial());
  int pageNumber = 0;
  pageNumber0(){
    pageNumber=0;
    emit(HomeNavigationBarPageNumber());
  }
  pageNumber1(){
    pageNumber=1;
    emit(HomeNavigationBarPageNumber());
  }
  pageNumber2(){
    pageNumber=2;
    emit(HomeNavigationBarPageNumber());
  }
  pageNumber3(){
    pageNumber=3;
    emit(HomeNavigationBarPageNumber());
  }
  pageNumber4(){
    pageNumber=4;
    emit(HomeNavigationBarPageNumber());
  }

}
