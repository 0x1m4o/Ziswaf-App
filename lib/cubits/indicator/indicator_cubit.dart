import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'indicator_state.dart';

class IndicatorCubit extends Cubit<IndicatorState> {
  IndicatorCubit() : super(IndicatorState.initial());
  void changeSlide(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
