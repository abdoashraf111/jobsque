import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  bool clickEnable = false;
  bool checkBox = false;
  bool showPass = false;
  trueClickEnable(){
    clickEnable=true;
    emit(SignInActiveButton());
  }
  falseClickEnable(){
    clickEnable=false;
    emit(SignInActiveButton());
  }
  checkBoxValue({required value}){
    checkBox=value;
    emit(SignInCheckBox());
  }
  showPassFun(){
    showPass = !showPass;
    emit(SignInShowPass());
  }
}
