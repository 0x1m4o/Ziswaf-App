// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'indicator_cubit.dart';

class IndicatorState extends Equatable {
  int currentIndex;
  IndicatorState({
    required this.currentIndex,
  });

  factory IndicatorState.initial() {
    return IndicatorState(currentIndex: 1);
  }

  IndicatorState copyWith({
    int? currentIndex,
  }) {
    return IndicatorState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  String toString() => 'IndicatorState(active:  currentIndex: $currentIndex)';

  @override
  List<Object> get props => [currentIndex];
}
