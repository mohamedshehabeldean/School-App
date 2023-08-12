import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gpacalculate_state.dart';

class GpacalculateCubit extends Cubit<GpacalculateState> {
  GpacalculateCubit() : super(GpacalculateInitial());

  double totalgba=3;
  double totalhour=24;
  double gpa=3;
  double gpa2=3;
  double gpa3=3;
  double gpa4=3;
  double gpa5=3;
  double gpa6=3;
  double gpa7=3;
  double gpa8=3;






  void totalgpaa() {
      totalgba;
      emit(gpacalculate());

  }

  void gpaincr() {
      gpa+=0.1;
      emit(gpacalculate());

  }

  void gpadecr() {
      gpa-=0.1;
      emit(gpacalculate());

  }

  void gpa2inc() {
      gpa2+=0.1;
      emit(gpacalculate());

  }

  void gpa2decr() {
      gpa2-=0.1;
      emit(gpacalculate());

  }

  void gpa3incr() {
      gpa3+=0.1;
      emit(gpacalculate());
  }

  void gpa3dec() {
      gpa3-=0.1;
      emit(gpacalculate());
  }

  void gpa4incr() {
      gpa4+=0.1;
      emit(gpacalculate());

  }

  void gpa4decr() {
      gpa4-=0.1;
      emit(gpacalculate());
  }

  void gpa5incr() {
      gpa5+=0.1;
      emit(gpacalculate());
  }

  void gpa5decr() {
      gpa5-=0.1;
      emit(gpacalculate());
  }

  void gpa6incr() {
      gpa6+=0.1;
      emit(gpacalculate());
  }

  void gpa6decr() {
      gpa6-=0.1;
      emit(gpacalculate());
  }

  void gpa7_incr() {
      gpa7+=0.1;
      emit(gpacalculate());
  }

  void gpa7_decr() {
      gpa7-=0.1;
      emit(gpacalculate());
  }

  void gpa8_incr() {
      gpa8+=0.1;
      emit(gpacalculate());
  }

  void gpa8_decr() {
      gpa8-=0.1;
      emit(gpacalculate());
  }








}
